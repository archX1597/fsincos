module fadd_close_N32
	#( parameter FRAC_WIDTH = 32,
       parameter EXP_WIDTH  = 8
        )(
		input exp_a_neq_b,far_sign                                      ,
		input  [EXP_WIDTH -1 : 0]  exp_f                                         ,
		input  [FRAC_WIDTH-1 : 0]  esmall_op32,elarge_op32                         ,
		output [FRAC_WIDTH-1 : 0]  close_result32,
		output [EXP_WIDTH -1 : 0]  exp_close,
		output close_sign
	);
	wire  [FRAC_WIDTH  :0]  close_esmall_op33;
	wire  [FRAC_WIDTH+1:0]  close_aligned_elarge_op34,close_aligned_esmall_op34 ;
	wire  [FRAC_WIDTH+1:0]  close_result_tonormalize34,close_result_tocompele34,close_result_tocompele34_P;
	reg   [FRAC_WIDTH-1:0]  close_shiftpath32;
	wire  [EXP_WIDTH-1 :0]  exp_close0;
	wire  [5:0]              lza_num;
	wire  [5:0]              shift_num;
	wire                     correct_sel;

	assign close_esmall_op33         = (exp_a_neq_b)? {1'b0,esmall_op32}:{esmall_op32,1'b0};
	assign close_aligned_elarge_op34 = {1'b0,elarge_op32,1'b0};
	assign close_aligned_esmall_op34 = {1'b0,close_esmall_op33};

//fixed ADD
	assign close_result_tocompele34   =  close_aligned_elarge_op34-close_aligned_esmall_op34;
	assign close_result_tocompele34_P = close_aligned_esmall_op34-close_aligned_elarge_op34;
	lza34 u_lza(
		.i_op_a         ( close_aligned_elarge_op34      ),
		.i_op_b         ( close_aligned_esmall_op34        ),
		.lza_num        ( lza_num      ),
		.correct_sel    ( correct_sel  )
	);

	assign close_result_tonormalize34 = close_result_tocompele34[33] ? close_result_tocompele34_P:close_result_tocompele34;
//normalized
	// @SuppressProblem -type arithmetic_operation_extend_non_const_other -count 1 -length 1
	assign shift_num                  = lza_num + correct_sel;
	// @SuppressProblem -type arithmetic_operation_extend_non_const_other -count 1 -length 1
	// @SuppressProblem -type arithmetic_operation_extend_const_other -count 1 -length 1
	assign exp_close0                 = exp_f-shift_num+1'b1;
	//assign shift_or_round             = lz_eq_1&(~correct_sel); // leading zero == 1,round zero >=2 shift

	/*always@(*) begin:round_close
		if(close_result_tonormalize34[0]==1'b0)
			close_result_torenormal33 = {close_result_tonormalize34[33:1]};
		else if((~close_result_tonormalize34[1]&close_result_tonormalize34[0]))
			close_result_torenormal33 = {close_result_tonormalize34[33:1]};
		else
			close_result_torenormal33 = close_result_tonormalize34[33:1]+1'b1;
	end*/
	
	//assign close_roundpath32 = close_result_torenormal33[32] ? close_result_torenormal33>>1 : close_result_torenormal33;

	always@(*) begin:shifter_close
		case(shift_num)
			6'd0: close_shiftpath32 = {close_result_tonormalize34[33:2] }             ;
			6'd1: close_shiftpath32 = {close_result_tonormalize34[32:1]} ;
			6'd2: close_shiftpath32 = {close_result_tonormalize34[31:0]} ;
			6'd3: close_shiftpath32 = {close_result_tonormalize34[30:0],1'b0} ;
			6'd4: close_shiftpath32 = {close_result_tonormalize34[29:0],2'b0} ;
			6'd5: close_shiftpath32 = {close_result_tonormalize34[28:0],3'b0} ;
			6'd6: close_shiftpath32 = {close_result_tonormalize34[27:0],4'b0} ;
			6'd7: close_shiftpath32 = {close_result_tonormalize34[26:0],5'b0} ;
			6'd8: close_shiftpath32 = {close_result_tonormalize34[25:0],6'b0} ;
			6'd9: close_shiftpath32 = {close_result_tonormalize34[24:0],7'b0} ;
			6'd10:close_shiftpath32 = {close_result_tonormalize34[23:0],8'b0};
			6'd11:close_shiftpath32 = {close_result_tonormalize34[22:0],9'b0};
			6'd12:close_shiftpath32 = {close_result_tonormalize34[21:0],10'b0};
			6'd13:close_shiftpath32 = {close_result_tonormalize34[20:0],11'b0};
			6'd14:close_shiftpath32 = {close_result_tonormalize34[19:0],12'b0};
			6'd15:close_shiftpath32 = {close_result_tonormalize34[18:0],13'b0};
			6'd16:close_shiftpath32 = {close_result_tonormalize34[17:0],14'b0};
			6'd17:close_shiftpath32 = {close_result_tonormalize34[16:0],15'b0};
			6'd18:close_shiftpath32 = {close_result_tonormalize34[15:0],16'b0};
			6'd19:close_shiftpath32 = {close_result_tonormalize34[14:0],17'b0};
			6'd20:close_shiftpath32 = {close_result_tonormalize34[13:0],18'b0};
			6'd21:close_shiftpath32 = {close_result_tonormalize34[12:0],19'b0};
			6'd22:close_shiftpath32 = {close_result_tonormalize34[11:0],20'b0};
			6'd23:close_shiftpath32 = {close_result_tonormalize34[10:0],21'b0};
			6'd24:close_shiftpath32 = {close_result_tonormalize34[9:0],22'b0};
			6'd25:close_shiftpath32 = {close_result_tonormalize34[8:0],23'b0};
			6'd26:close_shiftpath32 = {close_result_tonormalize34[7:0],24'b0};
			6'd27:close_shiftpath32 = {close_result_tonormalize34[6:0],25'b0};
			6'd28:close_shiftpath32 = {close_result_tonormalize34[5:0],26'b0};
			6'd29:close_shiftpath32 = {close_result_tonormalize34[4:0],27'b0};
			6'd30:close_shiftpath32 = {close_result_tonormalize34[3:0],28'b0};
			6'd31:close_shiftpath32 = {close_result_tonormalize34[2:0],29'b0};
			6'd32:close_shiftpath32 = {close_result_tonormalize34[1:0],30'b0};
			6'd33:close_shiftpath32 = {close_result_tonormalize34[0:0],31'b0};
			default:close_shiftpath32 = 32'b0;
		endcase
	end
	assign close_sign           = far_sign^close_result_tocompele34[33];



	assign close_result32      = close_shiftpath32;
	assign exp_close           = exp_close0;
endmodule