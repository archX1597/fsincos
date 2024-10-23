import uvm_pkg::*;
class f_scoreboard extends uvm_scoreboard;
	f_transaction expect_queue[$];
	uvm_blocking_get_port #(f_transaction) exp_port;
	uvm_blocking_get_port #(f_transaction) act_port;
	`uvm_component_utils(f_scoreboard);
	
	extern function new(string name,uvm_component parent = null);
	extern virtual function void build_phase(uvm_phase phase);
	extern virtual task main_phase(uvm_phase phase);
	extern virtual function bit compare_ulp(f_transaction get_actual,tmp_tran);
endclass

/**
 * @see uvm_pkg::uvm_scoreboard.new
 * @param name - 

 * @param parent - 
 * @return 
 */
function bit f_scoreboard::compare_ulp(f_transaction get_actual,tmp_tran);
		real error,ulp;
		int  exp;
		bit result;
		real zero;
		zero = 0;
		if(get_actual.frac32 == 32'b0000_0000) begin
			$display("0_error");
			exp = int'(tmp_tran.f64_exp11)-1023;
			if(exp<-128)
				result = 1'b1;
			else
				result = 1'b0; 
		end
		else begin
		exp = int'(tmp_tran.f64_exp11)-1023;
		ulp = $pow(2,exp-31);
		error = $abs(get_actual.f64_value - tmp_tran.f64_value);
		if(error<=ulp)
			result = 1'b1;
		else
			result = 1'b0;
		end
		return result;
endfunction

function f_scoreboard::new(string name, uvm_component parent = null);
	// TODO Auto-generated constructor stub
	super.new(name, parent);	
endfunction : new


/**
 * @see uvm_pkg::uvm_component.main_phase
 * @param phase - 
 * 
 */
task f_scoreboard::main_phase(uvm_phase phase);
	// TODO Auto-generated task stub

	f_transaction get_expect,get_actual,tmp_tran;
	bit result;
    super.main_phase(phase);
	fork
		while(1) begin
			exp_port.get(get_expect);
			`uvm_info(get_name(),"SCB get ref DATA",UVM_LOW);
			//get_expect.print();
			expect_queue.push_back(get_expect);	
		end
		while (1) begin
		    act_port.get(get_actual);
			`uvm_info(get_name(),"SCB get DUT DATA",UVM_LOW);
			//get_actual.print();
			if(expect_queue.size() > 0) begin
				tmp_tran = expect_queue.pop_front();
				result   = compare_ulp(get_actual,tmp_tran);
				if(result) begin
					`uvm_info("f_scoreboard", "cmp successfully", UVM_LOW);
				end
				else begin
					`uvm_error("f_scoreboard","compare failed");
					$display("the except pkt is");
					tmp_tran.print();
					$display("the actual pkt is");
					get_actual.print();
				end
			end
			else begin
				`uvm_error("f_scoreboard", "EXPECT QUEUE IS EMPTY")
				$display("the unexpected pkt is");
				get_actual.print();
			end
		end
	join

	
endtask : main_phase


/**
 * @see uvm_pkg::uvm_component.build_phase
 * @param phase - 
 * 
 */
function void f_scoreboard::build_phase(uvm_phase phase);
	// TODO Auto-generated function st
	super.build_phase(phase);
	exp_port = new("exp_port",this);
    act_port = new("act_port",this);
endfunction : build_phase


/**
 * @see uvm_pkg::uvm_scoreboard.new
 * @param name - 

 * @param parent - 
 * @return 
 */
