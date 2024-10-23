module stage3 #(parameter EXP_WIDTH  = 8, parameter FRAC_WIDTH = 32) (
	input                          i_X_APPRO_ZERO,
	input                          i_X_0_125_FLAG,
	input                          i_X_ZERO_CAL_FLAG,
	input       [31 :0]            i_Xi_FRAC,
	input                          i_SEL_L_OR_S,
	input                          i_RESULT_SIGN_FLIP,
	input                          i_sincos_proced,
	input                          i_sign_c,
	input       [EXP_WIDTH - 1: 0] i_exp_c,
	input       [FRAC_WIDTH- 1: 0] i_frac_c,
	input                          i_valid,
	                               i_clk,
	                               i_rstn,
	input       [3   :0]           i_COMPARE_DIST1_LOW,
	input       [2   :0]           i_COMPARE_DIST2_LOW,
	
	output	reg                    o_st3_reg_sign_DorX,
	output	reg [EXP_WIDTH - 1: 0] o_st3_reg_exp_DorX,
	output	reg [FRAC_WIDTH- 1: 0] o_st3_reg_frac_DorX,
	
	output   reg                   o_st3_valid,
	output   reg                   o_st3_reg_sel_DorX,
	output   reg                   o_st3_reg_X_ZERO_CAL,
	output   reg                   o_st3_reg_RESULT_SIGN_FLIP,
	output   reg                   o_st3_reg_COF_SIGN_REV_FLAG,
	
	output      [167:0]            COF  ,
	output      reg                o_st3_sincos_proced
);

wire [6  :0] o_ADDR_L_7B;
wire [4  :0] o_ADDR_S_5B;
wire o_COF_SIGN_REV_FLAG;

wire						 	               sign_X_or_D;
wire		[EXP_WIDTH - 1: 0] 				   exp_X_or_D ;
wire		[FRAC_WIDTH- 1: 0]                 frac_X_or_D;



wire o_SEL_L_or_S;


ADDR_DECODE u_ADDR_DECODE (
	// Inputs
	.i_COMPARE_DIST1_LOW(i_COMPARE_DIST1_LOW),
	.i_COMPARE_DIST2_LOW(i_COMPARE_DIST2_LOW),
	.i_SEL_L_or_S       (i_SEL_L_OR_S       ),
	.i_TRANS_FRAC       (i_Xi_FRAC          ),
	.i_X_0_125_FLAG     (i_X_0_125_FLAG     ),
	.i_sincos_proced    (i_sincos_proced    ),
	// Outputs
	.o_ADDR_L_7B        (o_ADDR_L_7B        ),
	.o_ADDR_S_5B        (o_ADDR_S_5B        ),
	.o_COF_SIGN_REV_FLAG(o_COF_SIGN_REV_FLAG),
	.o_SEL_L_or_S       (o_SEL_L_or_S       ),
	.i_X_APPRO_ZERO     (i_X_APPRO_ZERO     )
);



FSUB_N32_D0 #(.FRAC_WIDTH(FRAC_WIDTH), .EXP_WIDTH (EXP_WIDTH))
u_FSUB_N32_D0 (
	// Inputs
	.i_exp_a (i_exp_c    ),
	.i_exp_b (i_exp_c    ),
	.i_frac_a(i_frac_c   ),
	.i_frac_b(i_Xi_FRAC  ),
	.i_sign_a(i_sign_c   ),
	.i_sign_b(i_sign_c   ),
	// Outputs
	.o_exp_c (exp_X_or_D ),
	.o_frac_c(frac_X_or_D),
	.o_sign_c(sign_X_or_D)
);


wire [167:0] COF_DATA_L;
reg o_SEL_L_or_S_reg;

L_MEM u_L_MEM (
	// Inputs
	.ADDR      (o_ADDR_L_7B),
	.i_clk     (i_clk      ),
	.i_valid   (i_valid    ),
	// Outputs
	.COF_DATA_L(COF_DATA_L )
);

wire [167:0] COF_DATA_S;

S_MEM u_S_MEM (
	// Inputs
	.ADDR      (o_ADDR_S_5B),
	.i_clk     (i_clk      ),
	.i_valid   (i_valid    ),
	// Outputs
	.COF_DATA_S(COF_DATA_S )
);


assign COF = o_SEL_L_or_S_reg ? COF_DATA_L : COF_DATA_S;

//DATA SIGNAL REGISTER
always@(posedge i_clk or negedge i_rstn) begin
	if(!i_rstn)  begin
		o_st3_reg_sign_DorX <= 1'd0;
		o_st3_reg_exp_DorX  <= 8'd0;
		o_st3_reg_frac_DorX <= 0;
		o_SEL_L_or_S_reg    <= 1'd0;
	end
	else if(i_valid) begin
		o_st3_reg_sign_DorX <= sign_X_or_D;
		o_st3_reg_exp_DorX  <= exp_X_or_D ;
		o_st3_reg_frac_DorX <= frac_X_or_D;
		o_SEL_L_or_S_reg    <= o_SEL_L_or_S;
	end
	else begin
		o_st3_reg_sign_DorX <= o_st3_reg_sign_DorX;
		o_st3_reg_exp_DorX  <= o_st3_reg_exp_DorX ;
		o_st3_reg_frac_DorX <= o_st3_reg_frac_DorX;
		o_SEL_L_or_S_reg    <= o_SEL_L_or_S_reg;
	end
end

//flag signal
always@(posedge i_clk or negedge i_rstn) begin
	if(!i_rstn)  begin
		o_st3_reg_sel_DorX          <= 1'b0;
		o_st3_reg_X_ZERO_CAL        <= 1'b0;
		o_st3_reg_RESULT_SIGN_FLIP  <= 1'b0;
		o_st3_reg_COF_SIGN_REV_FLAG <= 1'b0;
		o_st3_sincos_proced         <= 1'b0;
		
	end
	else if(i_valid) begin
		o_st3_reg_sel_DorX          <= ~(i_X_APPRO_ZERO||i_X_0_125_FLAG);
		o_st3_reg_X_ZERO_CAL        <= i_X_ZERO_CAL_FLAG;
		o_st3_reg_RESULT_SIGN_FLIP  <= i_RESULT_SIGN_FLIP;
		o_st3_reg_COF_SIGN_REV_FLAG <= o_COF_SIGN_REV_FLAG;
		o_st3_sincos_proced         <= i_sincos_proced;
	end
	else begin
		o_st3_reg_sel_DorX         <=	 o_st3_reg_sel_DorX         ;
		o_st3_reg_X_ZERO_CAL       <=     o_st3_reg_X_ZERO_CAL       ;
		o_st3_reg_RESULT_SIGN_FLIP <=     o_st3_reg_RESULT_SIGN_FLIP ;
		o_st3_reg_COF_SIGN_REV_FLAG<=     o_st3_reg_COF_SIGN_REV_FLAG;
		o_st3_sincos_proced        <=     o_st3_sincos_proced        ;
	end
end

always@(posedge i_clk or negedge i_rstn) begin
	if(!i_rstn)
		o_st3_valid <= 1'b0;
	else
		o_st3_valid <= i_valid;
end


endmodule
