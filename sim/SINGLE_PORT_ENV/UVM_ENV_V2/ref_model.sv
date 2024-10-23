//  Class: ref_modle
class ref_model extends uvm_component;
	`uvm_component_utils(ref_model);
	//  Group: Configuration Object(s)
	uvm_blocking_get_port #(f_transaction) port0,port1;
	uvm_analysis_port #(f_transaction) ap;
	int width;
	//  Var: config_obj

	//  Group: Components
	extern function void build_phase(uvm_phase phase);
	extern virtual task main_phase(uvm_phase phase);
	extern virtual task ref_add(f_transaction i_tr0,i_tr1,ref_tr);
	extern virtual task ref_add_cut(f_transaction i_tr0,i_tr1,ref_tr);
	extern virtual task ref_mul(f_transaction i_tr0,i_tr1,ref_tr);
	extern virtual task f64tof41(real float_value,f_transaction tr);
	extern virtual function bit [63:0] f64toround(bit [10:0] f64_exp,bit [51:0] f64_frac);
	extern virtual task REF_EXCUTE(string opcode,f_transaction i_tr0,i_tr1,ref_tr);
	extern virtual function real width_cut(real f64,int width); 
	//  Group: Variables


	//  Group: Functions
	virtual task ref_map(f_transaction tr,ref_tr);
		real int_part,frac_part;
		bit  RESULT_SIGN_FLIP;
		RESULT_SIGN_FLIP = (tr.RESULT_SIGN_FLIP)&(~tr.sin_cos);
		if(tr.f64_value<0) begin
			int_part = $ceil(tr.f64_value);
			frac_part = $abs(tr.f64_value)+int_part;
		end
		else begin
			int_part = $floor(tr.f64_value);
			frac_part = $abs(tr.f64_value)-int_part;
		end
	//	`uvm_info(get_name(),$sformatf("the intpart is %.40f" ,int_part),UVM_LOW)
	//	`uvm_info(get_name(),$sformatf("the fracpart is %.40f",frac_part),UVM_LOW)
		tr.init_from_f64(frac_part,width);
		if(frac_part == 0) begin
			tr.f41_exp8 = 8'h00;
			tr.frac32 = 32'h0000_0000;
			tr.X_ZERO_FLAG=1'b1;
			tr.init_transaction(width);
		end
		tr.RESULT_SIGN_FLIP = RESULT_SIGN_FLIP;
		ref_tr = tr;
	endtask
	
	virtual task ref_sincos(f_transaction tr);
		real sin_cos_value;
		real pi2;
		real zr;
		pi2 = 2*$acos(-1);
		zr = 0;
		//`uvm_info(get_name(),"display the pi and tr before process",UVM_LOW)
		//$display("the pi is %.40f",pi2);
		//tr.print();
		if(tr.sin_cos == 1)
			sin_cos_value = $cos(pi2*tr.f64_value);
		else
			sin_cos_value = $sin(pi2*tr.f64_value);
		if(tr.f41_exp8==11'b0&tr.f64_frac52==52'b0&tr.sin_cos==1'b0)
			tr.init_from_f64(zr,width);
		else
			f64tof41(sin_cos_value,tr);
		//`uvm_info(get_name(),"display the tr after process",UVM_LOW)
		//tr.print();
	endtask
		
		
	//  Constructor: new
	function new(string name = "ref_modle", uvm_component parent);
		super.new(name, parent);
	endfunction: new

endclass: ref_model

/**
 * 
 * @param f64 - 

 * @param width - 
 * @return 
 */
function real ref_model::width_cut(real f64, int width);
	// TODO Auto-generated function stub
	real result;
	bit [10:0] exp;
	bit sign;
	bit [51:0] frac;
	bit [51:0] frac_target;
	{sign,exp,frac} = $realtobits(f64);
	if(width == 41)
		frac_target = {frac[51:12],12'b0};
	else if(width == 37)
		frac_target = {frac[51:16],16'b0};
	else if(width == 32)
		frac_target = {frac[51:21],21'b0};
	else
		`uvm_fatal("ref_model", "WIDTH don't initialize")
	result = $bitstoreal({sign,exp,frac_target});
endfunction : width_cut


/**
 * 
 * @param i_tr0 - 

 * @param i_tr1 - 

 * @param ref_tr - 
 * 
 */
task ref_model::ref_add_cut(f_transaction i_tr0, i_tr1, ref_tr);
	// TODO Auto-generated task stub
	f_transaction op_large,op_small;
	int large_exp,small_exp,exp_d,target_width;
	real ref_real,smallfix_real;
	real small_real,fixed_real;
	bit sign;
	bit [10:0] exp;
	bit [51:0] frac;
	if($abs(i_tr0.f64_value)>=$abs(i_tr1.f64_value)) begin
		op_large = i_tr0;
		op_small = i_tr1;
	end
	else begin
		op_large = i_tr1;
		op_small = i_tr0;
	end
	large_exp    = int'(op_large.f64_exp11)-1023;
	small_exp    = int'(op_small.f64_exp11)-1023;
	exp_d        = large_exp-small_exp;
	small_real   = op_small.f64_value;
	target_width = width-exp_d;
	if(target_width<=0) begin
		ref_real = op_large.f64_value;
		`uvm_info("ref_model","igonore the min op",UVM_LOW);
		op_small.print();
	end
	else begin
		fixed_real=(small_real/$pow(2,small_exp))*$pow(2,target_width-1);
		if(fixed_real<0) begin
			fixed_real = $ceil(fixed_real);
		end
		else 
			fixed_real = $floor(fixed_real);
		smallfix_real = ((fixed_real)/$pow(2,target_width-1))*$pow(2,small_exp);
	end
	ref_real = smallfix_real + op_large.f64_value;
	ref_tr.init_from_f64(ref_real,width);
endtask : ref_add_cut


/**
 * 
 * @param opcode - 
 * 
 */
task ref_model::REF_EXCUTE(string opcode,f_transaction i_tr0,i_tr1,ref_tr);
	// TODO Auto-generated task stub
	case (opcode)
	 "ADD":ref_add(i_tr0,i_tr1,ref_tr);
	 "MUL":ref_mul(i_tr0,i_tr1,ref_tr);
	 default:ref_add(i_tr0,i_tr1,ref_tr);
	endcase
endtask : REF_EXCUTE


/**
 * @see uvm_pkg::uvm_component.build_phase
 * @param phase -
 *
 */
function void ref_model::build_phase(uvm_phase phase);
	// TODO Auto-generated function stub
	super.build_phase(phase);
	if(!uvm_config_db#(int)::get(this,"","width",width))
	        `uvm_fatal("ref_model", "frac_width need config !!"); 
	port0 = new( "port0", this );
//	port1 = new( "port1", this );
	ap    = new("ap",this);
endfunction : build_phase

/**
 * @see uvm_pkg::uvm_component.main_phase
 * @param phase - 
 * 
 */
task ref_model::main_phase(uvm_phase phase);
	// TODO Auto-generated task stub
	f_transaction i_tr0;//i_tr1;
	f_transaction ref_tr    ;
	super.main_phase(phase);
	while(1) begin
		i_tr0  = new("i_tr0");
		//i_tr1  = new("i_tr1");
		//port1.get(i_tr1);
		port0.get(i_tr0);
		//`uvm_info(get_name(),"Ref_model accept data",UVM_LOW)
		ref_sincos(i_tr0);
		//ref_tr.print();
		ap.write(i_tr0);
	end
	
endtask : main_phase

/**
 * 
 * @param i_tr0 - 

 * @param i_tr1 - 

 * @param ref_tr - 
 * 
 */
task ref_model::ref_add(f_transaction i_tr0, i_tr1, ref_tr);
	// TODO Auto-generated task stub
	real ref_result;
	ref_result = i_tr0.f64_value+i_tr1.f64_value;
	//$display("the ref_value is %f",ref_result);
	f64tof41(ref_result,ref_tr);
endtask : ref_add
/**
 * 
 * @param i_tr0 - 

 * @param i_tr1 - 

 * @param ref_tr - 
 * 
 */
task ref_model::ref_mul(f_transaction i_tr0, i_tr1, ref_tr);
	// TODO Auto-generated task stub
	real ref_result;
	ref_result = i_tr0.f64_value*i_tr1.f64_value;
	f64tof41(ref_result,ref_tr);
endtask : ref_mul
/**
 * 
 * @param float_value - 

 * @param tr - 
 * 
 */
task ref_model::f64tof41(real float_value, f_transaction tr);
	// TODO Auto-generated task stub
	bit [51:0] f64_frac;
	bit [10:0] f64_exp;
	bit        sign;
	{sign,f64_exp,f64_frac}= $realtobits(float_value);
	//$display("F32 B %b",f64_exp);
	// round to 31bit 
	{f64_exp,f64_frac} = f64toround(f64_exp, f64_frac);
	//$display("F32 B %b",f64_frac[51:21]);
	//transfer
	tr.sign = sign;
	tr.frac32 = {1'b1,f64_frac[51:21]};
	//$display("F32 B %b",tr.f41_frac32);
	tr.f41_exp8   = f64_exp - 1023;
	tr.init_transaction(width);
endtask : f64tof41

/**
 * 
 * @param f64_exp - 

 * @param f64_frac - 
 * 
 */
 function bit [63:0] ref_model::f64toround(bit[10:0] f64_exp, bit[51:0] f64_frac);
	// TODO Auto-generated task stub
	//$display("The Round Before %b",f64_frac);
	bit [31:0] frac_to_round;
	bit [32:0] frac32;
	bit stick,guard;
	//$display("The Round bf %b",f64_frac);
	guard = f64_frac[20];
	stick = |f64_frac[19:0];
	frac_to_round = {1'b1,f64_frac[51:21]};
	if(guard == 1'b0)
		frac32 = {1'b0,frac_to_round};
	else if(~(frac_to_round[0]|stick))
		frac32 = {1'b0,frac_to_round};
	else
		frac32 = 1'b1 + frac_to_round;
	//procee exp and result;
	if(frac32[32]) begin
		f64_exp = f64_exp + 1;
		f64_frac = {frac32[31:1],21'b0};
	end
	else begin
		f64_exp = f64_exp;
		f64_frac = {frac32[30:0],21'b0};
	end
	return {f64_exp,f64_frac};
endfunction : f64toround

