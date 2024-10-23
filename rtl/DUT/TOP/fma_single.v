module fma_single #(parameter FRAC_WIDTH = 36, parameter EXP_WIDTH  = 8) (
	input                                  i_clk,
	                                       i_rstn,
	                                       i_valid,
	input                                  i_sel_DorX,
	input                                  i_X_ZERO_CAL,
	input                                  i_RESULT_SIGN_FLIP,
	
	
	input                                  i_sign_cof3 ,
	input  signed     [EXP_WIDTH - 1: 0]   i_exp_cof3 ,
	input             [FRAC_WIDTH+4- 1: 0] i_frac_cof3 ,
	
	input                                  i_sign_cof2 ,
	input  signed     [EXP_WIDTH - 1: 0]   i_exp_cof2,
	input             [FRAC_WIDTH+4- 1: 0] i_frac_cof2 ,
	
	input                                  i_sign_cof1 ,
	input  signed     [EXP_WIDTH - 1: 0]   i_exp_cof1 ,
	input             [FRAC_WIDTH+4- 1: 0] i_frac_cof1 ,
	
	input                                  i_sign_cof0 ,
	input  signed     [EXP_WIDTH - 1: 0]   i_exp_cof0 ,
	input             [FRAC_WIDTH+4- 1: 0] i_frac_cof0 ,
	
	
	input                                  i_sign_XorD ,
	input  signed     [EXP_WIDTH - 1: 0]   i_exp_XorD  ,
	input             [FRAC_WIDTH+4- 1: 0] i_frac_XorD ,
	
	output reg                             o_sign_c_reg ,
	output reg signed [EXP_WIDTH - 1: 0]   o_exp_c_reg ,
	output reg        [FRAC_WIDTH+4- 1: 0] o_frac_c_reg ,
	
	
	//control flag
	output reg                             o_sel_DorX,
	output reg                             o_X_ZERO_CAL,
	output reg                             o_RESULT_SIGN_FLIP,
	                                       o_valid,
	                                       result_done
	
	
);
parameter stage0=3'd0;
parameter stage1=3'd1;
parameter stage2=3'd2;
parameter stage3=3'd3;
parameter stage4=3'd4;
parameter stage5=3'd5;

reg [2:0] Current_State,Next_State;

reg                                 i_sign_cof3_reg;
reg signed     [EXP_WIDTH - 1: 0]   i_exp_cof3_reg ;
reg            [FRAC_WIDTH+4- 1: 0] i_frac_cof3_reg;

reg                                  i_sign_cof2_reg ;
reg  signed     [EXP_WIDTH - 1: 0]   i_exp_cof2_reg ;
reg             [FRAC_WIDTH+4- 1: 0] i_frac_cof2_reg;
reg                                  i_sign_cof1_reg ;
reg  signed     [EXP_WIDTH - 1: 0]   i_exp_cof1_reg ;
reg             [FRAC_WIDTH+4- 1: 0] i_frac_cof1_reg;
reg                                  i_sign_cof0_reg ;
reg  signed     [EXP_WIDTH - 1: 0]   i_exp_cof0_reg ;
reg             [FRAC_WIDTH+4- 1: 0] i_frac_cof0_reg ;

//do: ax+b

reg signed [EXP_WIDTH-1:0] i_exp_a;
reg i_sign_a;
reg [FRAC_WIDTH+4-1:0] i_frac_a;

wire o_sign_mul;
wire signed [EXP_WIDTH-1:0] o_exp_mul;
wire [FRAC_WIDTH+4-1:0] o_frac_mul;

always@(posedge i_clk or negedge i_rstn) begin
	 if(!i_rstn) begin
		i_sign_cof2_reg <= 1'b0 ;
	    i_exp_cof2_reg  <= 8'b0;
	    i_frac_cof2_reg <= 40'b0  ;
 	    i_sign_cof1_reg <= 1'b0    ;
	    i_exp_cof1_reg  <= 8'b0   ;
	    i_frac_cof1_reg <= 40'b0  ;
	    i_sign_cof0_reg <= 1'b0  ;
	    i_exp_cof0_reg  <= 8'b0  ;
	    i_frac_cof0_reg <= 40'b0 ;
		i_sign_cof3_reg <= 1'b0  ;
        i_exp_cof3_reg  <= 8'b0  ;
        i_frac_cof3_reg <= 40'b0 ;
	 end
	 else if(i_valid) begin
		i_sign_cof2_reg <= 		i_sign_cof2;
	    i_exp_cof2_reg  <= 	    i_exp_cof2;
	    i_frac_cof2_reg <= 	    i_frac_cof2;
 	    i_sign_cof1_reg <=  	i_sign_cof1;
	    i_exp_cof1_reg  <= 	    i_exp_cof1;
	    i_frac_cof1_reg <= 	    i_frac_cof1;
	    i_sign_cof0_reg <= 	    i_sign_cof0;
	    i_exp_cof0_reg  <= 	    i_exp_cof0;
	    i_frac_cof0_reg <= 	    i_frac_cof0;
		i_sign_cof3_reg <= 		i_sign_cof3;
        i_exp_cof3_reg  <=      i_exp_cof3;
        i_frac_cof3_reg <=      i_frac_cof3;
	 end


end




FMUL #(.FRAC_WIDTH(FRAC_WIDTH+4), .EXP_WIDTH(EXP_WIDTH)) u_FMUL (
	// input ports
	.i_sign_a(i_sign_a   ),
	.i_exp_a (i_exp_a    ),
	.i_frac_a(i_frac_a   ),
	.i_sign_b(i_sign_XorD),
	.i_exp_b (i_exp_XorD ),
	.i_frac_b(i_frac_XorD),
	// output ports
	.o_sign_c(o_sign_mul ),
	.o_exp_c (o_exp_mul  ),
	.o_frac_c(o_frac_mul )
);

reg i_sign_b;
reg signed [EXP_WIDTH-1:0] i_exp_b;
reg [FRAC_WIDTH+4-1:0] i_frac_b;
wire o_sign_add;
wire signed [EXP_WIDTH-1:0] o_exp_add;
wire [FRAC_WIDTH+4-1:0] o_frac_add;

reg start,done;
reg o_sign_mul_reg;
reg signed [EXP_WIDTH-1:0] o_exp_mul_reg;
reg [FRAC_WIDTH+4-1:0] o_frac_mul_reg;

reg o_sign_add_reg;
reg signed [EXP_WIDTH-1:0] o_exp_add_reg;
reg [FRAC_WIDTH+4-1:0] o_frac_add_reg;

always@(posedge i_clk or negedge i_rstn) begin
	if(!i_rstn) begin
		o_sign_mul_reg <=1'b0;
		o_exp_mul_reg <= 8'b0;
		o_frac_mul_reg <= 40'b0;
	end
	else if(start) begin
		o_sign_mul_reg    <=    o_sign_mul;
		o_exp_mul_reg    <=     o_exp_mul ;
		o_frac_mul_reg    <=    o_frac_mul;
	end
end

FADD_N40 #(.FRAC_WIDTH(FRAC_WIDTH+4), .EXP_WIDTH(EXP_WIDTH)) u_FADD_N40 (
	// input ports
	.i_sign_a(i_sign_b      ),
	.i_exp_a (i_exp_b       ),
	.i_frac_a(i_frac_b      ),
	.i_sign_b(o_sign_mul_reg),
	.i_exp_b (o_exp_mul_reg ),
	.i_frac_b(o_frac_mul_reg),
	// output ports
	.o_sign_c(o_sign_add    ),
	.o_exp_c (o_exp_add     ),
	.o_frac_c(o_frac_add    )
);


always@(posedge i_clk or negedge i_rstn) begin
	if(!i_rstn) begin
		o_sign_add_reg <=1'b0;
		o_exp_add_reg <= 8'b0;
		o_frac_add_reg <= 40'b0;
	end
	else if(start) begin
		o_sign_add_reg    <=    o_sign_add;
		o_exp_add_reg    <=     o_exp_add ;
		o_frac_add_reg    <=    o_frac_add;
	end
end



always@(posedge i_clk or negedge i_rstn) begin
	if(!i_rstn)
		Current_State<=stage0;
	else
		Current_State<=Next_State;
	
end

always@(*) begin
	case(Current_State)
		stage0:begin
			{i_sign_a,i_exp_a,i_frac_a} = {i_sign_cof3,i_exp_cof3,{i_frac_cof3}};
			{i_sign_b,i_exp_b,i_frac_b} = {i_sign_cof2_reg,i_exp_cof2_reg,{i_frac_cof2_reg}};
			if(i_valid)  begin Next_State      =  stage1;
				start       = 1'b1;
				done        = 1'b0;
			end
			else begin
				Next_State = stage0;
				start      = 1'b0;
				done       = 1'b0;
			end
			result_done = 1'b1;
		end
		stage1:begin//+
			{i_sign_b,i_exp_b,i_frac_b} = {i_sign_cof2_reg,i_exp_cof2_reg,{i_frac_cof2_reg}};
			{i_sign_a,i_exp_a,i_frac_a} = {i_sign_cof3_reg,i_exp_cof3_reg,{i_frac_cof3_reg}};
			Next_State = stage2;
			start      = 1'b1;
			done       = 1'b0;
			result_done = 1'b0;
		end
		stage2: begin//*
			{i_sign_b,i_exp_b,i_frac_b} = {i_sign_cof2_reg,i_exp_cof2_reg,{i_frac_cof2_reg}};
			{i_sign_a,i_exp_a,i_frac_a} = i_sel_DorX?{o_sign_add_reg ,o_exp_add_reg ,o_frac_add_reg }:{o_sign_add_reg,8'b1000_0000,40'b0};
			Next_State = stage3;
			start      = 1'b1;
			done       = 1'b0;
			result_done = 1'b0;
		end
		stage3:begin//+
			{i_sign_a,i_exp_a,i_frac_a} = i_sel_DorX?{o_sign_add_reg ,o_exp_add_reg ,o_frac_add_reg }:{o_sign_add_reg,8'b1000_0000,40'b0};
			{i_sign_b,i_exp_b,i_frac_b} = {i_sign_cof1_reg,i_exp_cof1_reg,i_frac_cof1_reg};
			Next_State = stage4;
			start      = 1'b1;
			done       = 1'b0;
			result_done = 1'b0;
		end
		stage4:begin {i_sign_a,i_exp_a,i_frac_a} = {o_sign_add_reg ,o_exp_add_reg ,o_frac_add_reg };
			{i_sign_b,i_exp_b,i_frac_b} = {i_sign_cof1_reg,i_exp_cof1_reg,i_frac_cof1_reg};//*
			Next_State = stage5;
			start      = 1'b1;
			done       = 1'b0;
			result_done = 1'b1;
		end
		stage5:begin {i_sign_b,i_exp_b,i_frac_b} = i_sel_DorX ? {i_sign_cof0_reg,i_exp_cof0_reg,i_frac_cof0_reg}:{i_sign_cof0_reg,8'b1000_0000,40'b0};
			{i_sign_a,i_exp_a,i_frac_a} = {o_sign_add_reg ,o_exp_add_reg ,o_frac_add_reg };
			Next_State = stage0;
			done       = 1'b1;
			start      = 1'b0;
			result_done = 1'b1;
		end
		default:begin
			{i_sign_a,i_exp_a,i_frac_a} = {i_sign_cof3_reg,i_exp_cof3_reg,{i_frac_cof3_reg}};
			{i_sign_b,i_exp_b,i_frac_b} = i_sel_DorX ? {i_sign_cof0_reg,i_exp_cof0_reg,i_frac_cof0_reg}:{i_sign_cof0_reg,8'b1000_0000,40'b0};
			i_exp_b=8'b0000_0000;
			if(i_valid)  begin Next_State      =  stage1;
				start       = 1'b1;
				done        = 1'b0;
			end
			else begin
				Next_State = stage0;
				start      = 1'b0;
				done       = 1'b0;
			end
			result_done = 1'b1;
		end
	endcase
end


always@(posedge i_clk or negedge i_rstn) begin
	if(~i_rstn)begin
		o_sel_DorX          <= 1'b0;
		o_X_ZERO_CAL        <= 1'b0;
		o_RESULT_SIGN_FLIP  <= 1'b0;
	end
	else if(start)begin
		o_sel_DorX          <= i_sel_DorX;
		o_X_ZERO_CAL        <= i_X_ZERO_CAL;
		o_RESULT_SIGN_FLIP  <= i_RESULT_SIGN_FLIP;
	end
end

always@(posedge i_clk or negedge i_rstn) begin
	if(~i_rstn)begin
		o_sign_c_reg    <=1'b0;
		o_exp_c_reg     <=8'b0;
		o_frac_c_reg    <=40'b0;
	end
	else if(done)begin
		o_sign_c_reg        <=o_sign_add;
		o_exp_c_reg         <=o_exp_add;
		o_frac_c_reg        <=o_frac_add;
	end
end

always@(posedge i_clk or negedge i_rstn) begin
	if(~i_rstn)
		o_valid <= 1'b0;
	else if(done)
		o_valid <= 1'b1;
	else
		o_valid <= 1'b0;
end

/*
always@(posedge i_clk or negedge i_rstn) begin
if(~i_rstn)begin
o_sign_c_reg_0    <=1'b0;
o_exp_c_reg_0     <=8'b0;
o_frac_c_reg_0    <=40'b0;
end
else if(start) begin
o_sign_c_reg_0    <= o_sign_add;
o_exp_c_reg_0     <= o_exp_add;
o_frac_c_reg_0    <= o_frac_add;
end
end
 */
endmodule
