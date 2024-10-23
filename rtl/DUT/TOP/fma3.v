module fma3 #(parameter FRAC_WIDTH = 40, parameter EXP_WIDTH  = 8) (
	input                                  i_clk,
	                                       i_rstn,
	                                       i_valid,
	input                                  i_sel_DorX,
	input                                  i_X_ZERO_CAL,
	input                                  i_RESULT_SIGN_FLIP,
	
	
	
	input                                  i_sign_m2 ,
	input  signed       [EXP_WIDTH - 1: 0] i_exp_m2 ,
	input               [FRAC_WIDTH- 1: 0] i_frac_m2 ,
	
	input                                  i_sign_cof0 ,
	input  signed       [EXP_WIDTH - 1: 0] i_exp_cof0 ,
	input               [FRAC_WIDTH- 1: 0] i_frac_cof0 ,
	
	
	input                                  i_sign_XorD ,
	input  signed       [EXP_WIDTH - 1: 0] i_exp_XorD  ,
	input               [FRAC_WIDTH- 1: 0] i_frac_XorD ,
	
	output reg                             o_sign_c_reg ,
	output reg signed   [EXP_WIDTH - 1: 0] o_exp_c_reg ,
	output reg          [FRAC_WIDTH- 1: 0] o_frac_c_reg ,
	
	
	output reg   signed [7:0]              exp_reg,
	output reg                             sign_reg,
	output reg          [31:0]             frac_reg ,
	
	
	
	
	
	//control flag
	output reg                             o_sel_DorX,
	output reg                             o_X_ZERO_CAL,
	output reg                             o_RESULT_SIGN_FLIP,
	                                       o_valid,
	output reg                             i_valid_2
);

wire [ FRAC_WIDTH- 1: 0] o_frac_c_mul;
wire o_sign_c_mul;
wire [ EXP_WIDTH - 1: 0] o_exp_c_mul;

reg [ FRAC_WIDTH- 1: 0] o_frac_c_mul_reg;
reg                     o_sign_c_mul_reg;
reg [ EXP_WIDTH - 1: 0] o_exp_c_mul_reg;


reg                              i_sign_cof0_reg ;
reg  signed [EXP_WIDTH - 1: 0]    i_exp_cof0_reg ;
reg         [FRAC_WIDTH- 1: 0]   i_frac_cof0_reg ;

reg signed [7:0]  exp_reg_0 ;
reg               sign_reg_0;
reg [31:0]        frac_reg_0;

FMUL #(.FRAC_WIDTH(FRAC_WIDTH), .EXP_WIDTH (EXP_WIDTH))
u_FMUL_40 (
	// Inputs
	.i_exp_a (i_exp_XorD  ),
	.i_exp_b (i_exp_m2    ),
	.i_frac_a(i_frac_XorD ),
	.i_frac_b(i_frac_m2   ),
	.i_sign_a(i_sign_XorD ),
	.i_sign_b(i_sign_m2   ),
	// Outputs
	.o_exp_c (o_exp_c_mul ),
	.o_frac_c(o_frac_c_mul),
	.o_sign_c(o_sign_c_mul)
);


reg     i_sel_DorX_2;
reg     i_X_ZERO_CAL_2;
reg     i_RESULT_SIGN_FLIP_2;

//pipe line
always@(posedge i_clk or negedge i_rstn) begin
	if(!i_rstn) begin
		i_sel_DorX_2           <= 1'b0;
		i_X_ZERO_CAL_2         <= 1'b0;
		i_RESULT_SIGN_FLIP_2   <= 1'b0;
	end
	else if(i_valid) begin
		i_sel_DorX_2           <=i_sel_DorX      ;
		i_X_ZERO_CAL_2         <=i_X_ZERO_CAL    ;
		i_RESULT_SIGN_FLIP_2   <=i_RESULT_SIGN_FLIP;
	end
end
//mul result reg
always@(posedge i_clk or negedge i_rstn) begin
	if(!i_rstn) begin
		o_frac_c_mul_reg <=40'd0;
		o_sign_c_mul_reg <=1'd0;
		o_exp_c_mul_reg <=8'd0;
	end
	else if (i_valid) begin
		o_frac_c_mul_reg <=o_frac_c_mul;
		o_sign_c_mul_reg <=o_sign_c_mul;
		o_exp_c_mul_reg  <=o_exp_c_mul;
	end
end

//valid reg

always@(posedge i_clk or negedge i_rstn) begin
	if(!i_rstn) begin
		i_valid_2 <= 1'b0;
	end
	else
		i_valid_2 <= i_valid;
end


//DorX reg


always@(posedge i_clk or negedge i_rstn) begin
	if(!i_rstn) begin
		exp_reg_0 <=8'd0;
		sign_reg_0 <=1'd0;
		frac_reg_0 <=0;
	end
	else if (i_valid) begin
		exp_reg_0  <= i_exp_XorD;
		sign_reg_0 <= i_sign_XorD;
		frac_reg_0 <= i_frac_XorD[FRAC_WIDTH-1:FRAC_WIDTH-32];
	end
end
//OUTPUT DorxREG
always@(posedge i_clk or negedge i_rstn) begin
	if(!i_rstn) begin
		exp_reg <=8'd0;
		sign_reg <=1'd0;
		frac_reg <=0;
	end
	else if (i_valid_2) begin
		exp_reg  <= exp_reg_0 ;
		sign_reg <= sign_reg_0;
		frac_reg <= frac_reg_0;
	end
end





//cof reg


always@(posedge i_clk or negedge i_rstn) begin
	if(!i_rstn) begin
		i_frac_cof0_reg <=40'd0;
		i_sign_cof0_reg <=1'd0;
		i_exp_cof0_reg  <=8'd0;
	end
	else if (i_valid) begin
		i_frac_cof0_reg <= i_sel_DorX ? i_frac_cof0 : 40'b0;
		i_sign_cof0_reg <= i_sign_cof0 ;
		i_exp_cof0_reg  <= i_sel_DorX ? i_exp_cof0 : 8'b1000_0000;
	end
end




wire o_sign_c;
wire [EXP_WIDTH - 1: 0] o_exp_c;
wire [FRAC_WIDTH- 1: 0] o_frac_c;

FADD_N40 #(.FRAC_WIDTH(FRAC_WIDTH), .EXP_WIDTH (EXP_WIDTH))
u_FADD_N40 (
	// Inputs
	.i_exp_a (o_exp_c_mul_reg ),
	.i_exp_b (i_exp_cof0_reg  ),
	.i_frac_a(o_frac_c_mul_reg),
	.i_frac_b(i_frac_cof0_reg ),
	.i_sign_a(o_sign_c_mul_reg),
	.i_sign_b(i_sign_cof0_reg ),
	// Outputs
	.o_exp_c (o_exp_c         ),
	.o_frac_c(o_frac_c        ),
	.o_sign_c(o_sign_c        )
);



//output reg

always@(posedge i_clk or negedge i_rstn) begin
	if(!i_rstn) begin
		o_valid <= 1'b0;
	end
	else
		o_valid <= i_valid_2;
end
// control
always@(posedge i_clk or negedge i_rstn) begin
	if(!i_rstn) begin
		o_sel_DorX           <= 1'b0;
		o_X_ZERO_CAL         <= 1'b0;
		o_RESULT_SIGN_FLIP   <= 1'b0;
	end
	else if(i_valid_2) begin
		o_sel_DorX           <=i_sel_DorX_2        ;
		o_X_ZERO_CAL         <=i_X_ZERO_CAL_2      ;
		o_RESULT_SIGN_FLIP   <=i_RESULT_SIGN_FLIP_2;
	end
end




//data


always@(posedge i_clk or negedge i_rstn) begin
	if(!i_rstn) begin
		o_sign_c_reg   <= 1'd0;
		o_exp_c_reg    <= 8'd0;
		o_frac_c_reg   <= 40'd0;
	end
	else if(i_valid_2) begin
		o_sign_c_reg   <= o_sign_c;
		o_exp_c_reg    <= o_exp_c ;
		o_frac_c_reg   <= o_frac_c;
	end
end

endmodule