module top#(
		parameter EXP_WIDTH  = 8,
		parameter FRAC_WIDTH = 32
)
(
	input                             i_clk,i_rstn,i_valid,
	input                             i_sign_a ,
	input         [EXP_WIDTH - 1: 0]  i_exp_a  ,
	input         [FRAC_WIDTH- 1: 0]  i_frac_a ,
	input                             i_sincos ,
	

	output                            o_valid, 
    output                            o_sign_a ,            
    output  [EXP_WIDTH - 1: 0]        o_exp_a  ,            
    output  [FRAC_WIDTH- 1: 0]        o_frac_a ,            
	output                            o_sincos            
);        
	reg                             i_sign_a_reg ;	
	reg         [EXP_WIDTH - 1: 0]  i_exp_a_reg  ;	
	reg         [FRAC_WIDTH- 1: 0]  i_frac_a_reg ;
	reg                             i_sincos_reg ;
	reg         i_valid_reg;

	always@(posedge i_clk or negedge i_rstn) begin 
		if(!i_rstn)  begin  
		   i_sign_a_reg  <= 0;
		   i_exp_a_reg   <= 0;
  		   i_frac_a_reg  <= 0;
		   i_sincos_reg  <= 0;
		end                                          
		else if(i_valid) begin      
		   i_sign_a_reg  <= i_sign_a;
		   i_exp_a_reg   <= i_exp_a;
  		   i_frac_a_reg  <= i_frac_a;
		   i_sincos_reg  <= i_sincos;
		end                                                                                
	end            

	always@(posedge i_clk or negedge i_rstn) begin
		if(!i_rstn)
			i_valid_reg <= 1'b0;
		else 
			i_valid_reg <= i_valid;
	end



	reg  sincos_1,sincos_2,sincos_3,sincos_4,sincos_5,sincos_6,sincos_7,sincos_8,sincos_9,sincos_10;
	
	//stage 1
	wire o_st1_reg_sign_a;
	wire [EXP_WIDTH - 1: 0] o_st1_reg_exp_a;
	wire [FRAC_WIDTH- 1: 0] o_st1_reg_frac_a;
	wire o_st1_reg_sign_bias;
	wire [EXP_WIDTH - 1: 0] o_st1_reg_exp_bias;
	wire [FRAC_WIDTH- 1: 0] o_st1_reg_frac_bias;
	wire o_st1_reg_sincos_proced;
	wire o_st1_reg_RESULT_SIGN_FLIP;
	wire o_X_st1_reg_ZERO_FLAG;
	wire o_st1_valid;

	stage1 #(
		.EXP_WIDTH (EXP_WIDTH),
		.FRAC_WIDTH(FRAC_WIDTH)
	)
	u_stage1 (
		// Inputs
		.i_clk                     (i_clk),
		.i_exp_a                   (i_exp_a_reg),
		.i_frac_a                  (i_frac_a_reg),
		.i_rstn                    (i_rstn),
		.i_sign_a                  (i_sign_a_reg),
		.i_sincos                  (i_sincos_reg),
		.i_valid                   (i_valid_reg),
		// Outputs
		.o_X_st1_reg_ZERO_FLAG     (o_X_st1_reg_ZERO_FLAG),
		.o_st1_reg_RESULT_SIGN_FLIP(o_st1_reg_RESULT_SIGN_FLIP),
		.o_st1_reg_exp_a           (o_st1_reg_exp_a),
		.o_st1_reg_exp_bias        (o_st1_reg_exp_bias),
		.o_st1_reg_frac_a          (o_st1_reg_frac_a),
		.o_st1_reg_frac_bias       (o_st1_reg_frac_bias),
		.o_st1_reg_sign_a          (o_st1_reg_sign_a),
		.o_st1_reg_sign_bias       (o_st1_reg_sign_bias),
		.o_st1_reg_sincos_proced   (o_st1_reg_sincos_proced),
		.o_st1_valid               (o_st1_valid)
		);
	
	
	always@(posedge i_clk or negedge i_rstn) begin
		if(!i_rstn)
			sincos_1 <= 1'b0;
		else if (i_valid_reg)
			sincos_1 <= i_sincos_reg;
	end
	//stage2 
	
	wire o_st2_reg_X_APPRO_ZERO;
	wire o_st2_reg_X_0_125_FLAG;
	wire o_st2_reg_X_ZERO_CAL_FLAG;
	wire [31 :0] o_st2_reg_Xi_FRAC;
	wire o_st2_reg_SEL_L_OR_S;
	wire o_st2_reg_st2_RESULT_SIGN_FLIP;
	wire o_st2_reg_sincos_proced;
	wire o_st2_reg_sign_c;
	wire [EXP_WIDTH - 1: 0] o_st2_reg_exp_c;
	wire [FRAC_WIDTH- 1: 0] o_st2_reg_frac_c;
	wire o_st2_valid;
	wire [3   :0] o_st2_reg_COMPARE_DIST1_LOW;
	wire [2   :0] o_st2_reg_COMPARE_DIST2_LOW;

	stage2 #(
		.EXP_WIDTH (EXP_WIDTH),
		.FRAC_WIDTH(FRAC_WIDTH)
	)
	u_stage2 (
		// Inputs
		.i_clk                        (i_clk),
		.i_rstn                       (i_rstn),
		.i_st2_RESULT_SIGN_FLIP       (o_st1_reg_RESULT_SIGN_FLIP),        
		.i_st2_X_ZERO_FLAG            (o_X_st1_reg_ZERO_FLAG),   
		.i_st2_exp_a                  (o_st1_reg_exp_a),              
		.i_st2_exp_bias               (o_st1_reg_exp_bias),           
		.i_st2_frac_a                 (o_st1_reg_frac_a),             
		.i_st2_frac_bias              (o_st1_reg_frac_bias),          
		.i_st2_sign_a                 (o_st1_reg_sign_a),             
		.i_st2_sign_bias              (o_st1_reg_sign_bias),          
		.i_st2_sincos_proced          (o_st1_reg_sincos_proced),      
		.i_valid                      (o_st1_valid),
		// Outputs
		.o_st2_reg_COMPARE_DIST1_LOW   (o_st2_reg_COMPARE_DIST1_LOW),
		.o_st2_reg_COMPARE_DIST2_LOW   (o_st2_reg_COMPARE_DIST2_LOW),
		.o_st2_reg_SEL_L_OR_S          (o_st2_reg_SEL_L_OR_S),
		.o_st2_reg_X_0_125_FLAG        (o_st2_reg_X_0_125_FLAG),
		.o_st2_reg_X_APPRO_ZERO        (o_st2_reg_X_APPRO_ZERO),
		.o_st2_reg_X_ZERO_CAL_FLAG     (o_st2_reg_X_ZERO_CAL_FLAG),
		.o_st2_reg_Xi_FRAC             (o_st2_reg_Xi_FRAC),
		.o_st2_reg_exp_c               (o_st2_reg_exp_c),
		.o_st2_reg_frac_c              (o_st2_reg_frac_c),
		.o_st2_reg_sign_c              (o_st2_reg_sign_c),
		.o_st2_reg_sincos_proced       (o_st2_reg_sincos_proced),
		.o_st2_reg_st2_RESULT_SIGN_FLIP(o_st2_reg_st2_RESULT_SIGN_FLIP),
		.o_st2_valid                   (o_st2_valid)
	);
	always@(posedge i_clk or negedge i_rstn) begin
		if(!i_rstn)
			sincos_2 <= 1'b0;
		else if (o_st1_valid)
			sincos_2 <= sincos_1;
	end
	
	//stag3
	wire 					o_st3_reg_sign_DorX;
	wire [EXP_WIDTH - 1: 0] o_st3_reg_exp_DorX;
	wire [FRAC_WIDTH- 1: 0] o_st3_reg_frac_DorX;
	wire                    o_st3_valid;
	wire                   o_st3_reg_sel_DorX;
	wire                   o_st3_reg_X_ZERO_CAL;
	wire                   o_st3_reg_RESULT_SIGN_FLIP;
	wire                   o_st3_reg_COF_SIGN_REV_FLAG;
	wire                   [167:0] COF;
	wire                   o_st3_sincos_proced;
	
	
	stage3 #(
		.EXP_WIDTH (EXP_WIDTH),
		.FRAC_WIDTH(FRAC_WIDTH)
	)
	u_stage3 (
		// Inputs
		.i_COMPARE_DIST1_LOW        (o_st2_reg_COMPARE_DIST1_LOW),
		.i_COMPARE_DIST2_LOW        (o_st2_reg_COMPARE_DIST2_LOW),
		.i_RESULT_SIGN_FLIP         (o_st2_reg_st2_RESULT_SIGN_FLIP),
		.i_SEL_L_OR_S               (o_st2_reg_SEL_L_OR_S),
		.i_X_0_125_FLAG             (o_st2_reg_X_0_125_FLAG),  
		.i_X_APPRO_ZERO             (o_st2_reg_X_APPRO_ZERO),  
		.i_X_ZERO_CAL_FLAG          (o_st2_reg_X_ZERO_CAL_FLAG),
		.i_Xi_FRAC                  (o_st2_reg_Xi_FRAC),
		.i_clk                      (i_clk),
		.i_exp_c                    (o_st2_reg_exp_c),             
		.i_frac_c                   (o_st2_reg_frac_c),            
		.i_rstn                     (i_rstn),            
		.i_sign_c                   (o_st2_reg_sign_c),     
		.i_sincos_proced            (o_st2_reg_sincos_proced),
		.i_valid                    (o_st2_valid),                  
		// Outputs
		.COF                        (COF),
		.o_st3_reg_COF_SIGN_REV_FLAG(o_st3_reg_COF_SIGN_REV_FLAG),
		.o_st3_reg_RESULT_SIGN_FLIP (o_st3_reg_RESULT_SIGN_FLIP),
		.o_st3_reg_X_ZERO_CAL       (o_st3_reg_X_ZERO_CAL),
		.o_st3_reg_exp_DorX         (o_st3_reg_exp_DorX),
		.o_st3_reg_frac_DorX        (o_st3_reg_frac_DorX),
		.o_st3_reg_sel_DorX         (o_st3_reg_sel_DorX),
		.o_st3_reg_sign_DorX        (o_st3_reg_sign_DorX),
		.o_st3_valid                (o_st3_valid),
		.o_st3_sincos_proced        (o_st3_sincos_proced )
	);
	
	always@(posedge i_clk or negedge i_rstn) begin
		if(!i_rstn)
			sincos_3 <= 1'b0;
		else if (o_st2_valid)
			sincos_3 <= sincos_2;
	end
	
	
	
	
	
	//stage 4~5
	wire [7:0] cof_exp_3;
	wire [7:0] cof_exp_2;
	wire [7:0] cof_exp_1;
	wire [7:0] cof_exp_0;
	wire       cof_sign_3;
	wire       cof_sign_2;
	wire       cof_sign_1;
	wire       cof_sign_0;
	wire [35:0] cof_frac_3;
	wire [35:0] cof_frac_2;
	wire [39:0] cof_frac_0;
	wire [39:0] cof_frac_1;


//stage 4~5
	cof_rec_top u_cof_rec_top (
		// Inputs
		.cof_sign_rev(o_st3_reg_COF_SIGN_REV_FLAG),
		.cof_torec   (COF),
		.sel_DorX    (o_st3_reg_sel_DorX),
		.sin_or_cos  (o_st3_sincos_proced),
		// Outputs
		.cof_exp_0   (cof_exp_0),
		.cof_exp_1   (cof_exp_1),
		.cof_exp_2   (cof_exp_2),
		.cof_exp_3   (cof_exp_3),
		.cof_frac_0  (cof_frac_0),
		.cof_frac_1  (cof_frac_1),
		.cof_frac_2  (cof_frac_2),
		.cof_frac_3  (cof_frac_3),
		.cof_sign_0  (cof_sign_0),
		.cof_sign_1  (cof_sign_1),
		.cof_sign_2  (cof_sign_2),
		.cof_sign_3  (cof_sign_3)
	);
	

	wire o_sign_c_reg_1;
	wire [EXP_WIDTH - 1: 0] o_exp_c_reg_1;
	wire [35: 0] o_frac_c_reg_1;
	wire 		o_reg_sign_cof0;
	wire [EXP_WIDTH - 1: 0] o_reg_exp_cof0;
	wire [39 : 0]           o_reg_frac_cof0;
	wire o_reg_sign_cof1;
	wire [EXP_WIDTH - 1: 0] o_reg_exp_cof1;
	wire [39           : 0] o_reg_frac_cof1;
	wire o_sel_DorX_1;
	wire o_X_ZERO_CAL_1;
	wire o_RESULT_SIGN_FLIP_1;
	wire o_valid_1;
	wire 				  D_sign_reg_1;
	wire [FRAC_WIDTH-1:0] D_frac_reg_1;
	wire [EXP_WIDTH -1:0] D_exp_reg_1;

	fma1 #(
		.FRAC_WIDTH(FRAC_WIDTH+4),
		.EXP_WIDTH (EXP_WIDTH)
	)
	u_fma1 (
		// Inputs
		.i_RESULT_SIGN_FLIP(o_st3_reg_RESULT_SIGN_FLIP),
		.i_X_ZERO_CAL      (o_st3_reg_X_ZERO_CAL),
		.i_clk             (i_clk),
		.i_exp_XorD        (o_st3_reg_exp_DorX),
		.i_exp_cof0        (cof_exp_0),
		.i_exp_cof1        (cof_exp_1),
		.i_exp_cof2        (cof_exp_2),
		.i_exp_cof3        (cof_exp_3),
		.i_frac_XorD       ({o_st3_reg_frac_DorX,4'b0000}),
		.i_frac_cof0       (cof_frac_0),
		.i_frac_cof1       (cof_frac_1),
		.i_frac_cof2       (cof_frac_2),
		.i_frac_cof3       (cof_frac_3),
		.i_rstn            (i_rstn),
		.i_sel_DorX        (o_st3_reg_sel_DorX),
		.i_sign_XorD       (o_st3_reg_sign_DorX),
		.i_sign_cof0      ( cof_sign_0),
		.i_sign_cof1      ( cof_sign_1),
		.i_sign_cof2      ( cof_sign_2),
		.i_sign_cof3      ( cof_sign_3),
		.i_valid           (o_st3_valid),
		// Outputs
		.o_RESULT_SIGN_FLIP(o_RESULT_SIGN_FLIP_1),
		.o_X_ZERO_CAL      (o_X_ZERO_CAL_1),
		.o_exp_c_reg       (o_exp_c_reg_1),
		.o_frac_c_reg      (o_frac_c_reg_1),
		.o_reg_exp_cof0    (o_reg_exp_cof0),
		.o_reg_exp_cof1    (o_reg_exp_cof1),
		.o_reg_frac_cof0   (o_reg_frac_cof0),
		.o_reg_frac_cof1   (o_reg_frac_cof1),
		.o_reg_sign_cof0   (o_reg_sign_cof0),
		.o_reg_sign_cof1   (o_reg_sign_cof1),
		// control flag
		.o_sel_DorX        (o_sel_DorX_1),
		.o_sign_c_reg      (o_sign_c_reg_1),
		.o_valid           (o_valid_1),
		.exp_reg           (D_exp_reg_1), 
        .frac_reg          (D_frac_reg_1),
		.sign_reg          (D_sign_reg_1) 
    );
//sincos
	always@(posedge i_clk or negedge i_rstn) begin
		if(!i_rstn)
			sincos_4 <= 1'b0;
		else if (o_st3_valid)
			sincos_4 <= sincos_3;
	end
	
	always@(posedge i_clk or negedge i_rstn) begin
		if(!i_rstn)
			sincos_5 <= 1'b0;
		else if (u_fma1.i_valid_2)
			sincos_5 <= sincos_4;
	end
	



	wire o_sign_c_reg_2;
	wire [EXP_WIDTH - 1: 0] o_exp_c_reg_2;
	wire [FRAC_WIDTH+8- 1: 0] o_frac_c_reg_2;

    wire o_reg_sign_cof0_2; 
	wire [EXP_WIDTH - 1: 0] o_reg_exp_cof0_2;
	wire [FRAC_WIDTH+8- 1: 0] o_reg_frac_cof0_2;
	wire o_sel_DorX_2;
	wire o_X_ZERO_CAL_2;
	wire o_RESULT_SIGN_FLIP_2;
	wire o_valid_2;
	wire D_sign_reg_2;
	wire [FRAC_WIDTH-1:0] D_frac_reg_2;
	wire [EXP_WIDTH -1:0] D_exp_reg_2;

	fma2 #(
		.FRAC_WIDTH(FRAC_WIDTH+8),
		.EXP_WIDTH (EXP_WIDTH)
	)
	u_fma2 (
		// Inputs
		.i_RESULT_SIGN_FLIP(o_RESULT_SIGN_FLIP_1),
		.i_X_ZERO_CAL      (o_X_ZERO_CAL_1),
		.i_clk             (i_clk),
		.i_exp_XorD        (D_exp_reg_1),
		.i_exp_cof0        (o_reg_exp_cof0),
		.i_exp_cof1        (o_reg_exp_cof1),
		.i_exp_m1          (o_exp_c_reg_1),
		.i_frac_XorD       ({D_frac_reg_1,8'b0000}),
		.i_frac_cof0       (o_reg_frac_cof0),
		.i_frac_cof1       (o_reg_frac_cof1),
		.i_frac_m1         ({o_frac_c_reg_1,4'b0000}),
		.i_rstn            (i_rstn),
		.i_sel_DorX        (o_sel_DorX_1),
		.i_sign_XorD       (D_sign_reg_1),
		.i_sign_cof0       (o_reg_sign_cof0),
		.i_sign_cof1       (o_reg_sign_cof1),
		.i_sign_m1         (o_sign_c_reg_1),
		.i_valid           (o_valid_1),
		// Outputs
		.o_RESULT_SIGN_FLIP(o_RESULT_SIGN_FLIP_2),
		.o_X_ZERO_CAL      (o_X_ZERO_CAL_2),
		.o_exp_c_reg       (o_exp_c_reg_2),
		.o_frac_c_reg      (o_frac_c_reg_2),
		.o_reg_exp_cof0    (o_reg_exp_cof0_2),
		.o_reg_frac_cof0   (o_reg_frac_cof0_2),
		.o_reg_sign_cof0   (o_reg_sign_cof0_2),
		// control flag
		.o_sel_DorX        (o_sel_DorX_2),
		.o_sign_c_reg      (o_sign_c_reg_2),
		.o_valid           (o_valid_2),
        .exp_reg           (D_exp_reg_2), 
        .frac_reg          (D_frac_reg_2),
        .sign_reg          (D_sign_reg_2) 
	);
	
	
	

	
	always@(posedge i_clk or negedge i_rstn) begin
		if(!i_rstn)
			sincos_6 <= 1'b0;
		else if (o_valid_1)
			sincos_6 <= sincos_5;
	end
	
	always@(posedge i_clk or negedge i_rstn) begin
		if(!i_rstn)
			sincos_7 <= 1'b0;
		else if (u_fma2.i_valid_2)
			sincos_7 <= sincos_6;
	end
	
	
	
	
	//
	
	
	wire o_sign_c_reg_3;
	wire [EXP_WIDTH - 1: 0] o_exp_c_reg_3;
	wire [FRAC_WIDTH+8- 1: 0] o_frac_c_reg_3;
	wire o_sel_DorX_3;
	wire o_X_ZERO_CAL_3;
	wire o_RESULT_SIGN_FLIP_3;
	wire o_valid_3;

	fma3 #(
		.FRAC_WIDTH(FRAC_WIDTH+8),
		.EXP_WIDTH (EXP_WIDTH)
	)
	u_fma3 (
		// Inputs
		.i_RESULT_SIGN_FLIP(o_RESULT_SIGN_FLIP_2),
		.i_X_ZERO_CAL      (o_X_ZERO_CAL_2),
		.i_clk             (i_clk),
		.i_exp_XorD        (D_exp_reg_2),
		.i_exp_cof0        (o_reg_exp_cof0_2),
		.i_exp_m2          (o_exp_c_reg_2),
		.i_frac_XorD       ({D_frac_reg_2,8'b0000_0000}),
		.i_frac_cof0       (o_reg_frac_cof0_2),
		.i_frac_m2         (o_frac_c_reg_2),
		.i_rstn            (i_rstn),
		.i_sel_DorX        (o_sel_DorX_2),
		.i_sign_XorD       (D_sign_reg_2),
		.i_sign_cof0       (o_reg_sign_cof0_2),
		.i_sign_m2         (o_sign_c_reg_2),
		.i_valid           (o_valid_2),
		// Outputs
		.o_RESULT_SIGN_FLIP(o_RESULT_SIGN_FLIP_3),
		.o_X_ZERO_CAL      (o_X_ZERO_CAL_3),
		.o_exp_c_reg       (o_exp_c_reg_3),
		.o_frac_c_reg      (o_frac_c_reg_3),
		// control flag
		.o_sel_DorX        (o_sel_DorX_3),
		.o_sign_c_reg      (o_sign_c_reg_3),
		.o_valid           (o_valid_3)
	);
	
	always@(posedge i_clk or negedge i_rstn) begin
		if(!i_rstn)
			sincos_8 <= 1'b0;
		else if (o_valid_2)
			sincos_8<= sincos_7;
	end
	
	always@(posedge i_clk or negedge i_rstn) begin
		if(!i_rstn)
			sincos_9<= 1'b0;
		else if (u_fma3.i_valid_2)
			sincos_9 <= sincos_8;
	end
	
	wire [7:0] round_exp,zero_exp;
	wire [31:0] round_frac,zero_frac;
	wire  round_sign, zero_sign;
	
	round #(
		.EXP_WIDTH (EXP_WIDTH),
		.FRAC_WIDTH(FRAC_WIDTH+8)
	)
	u_round (
		// Inputs
		.i_exp_a (o_exp_c_reg_3),
		.i_frac_a(o_frac_c_reg_3),
		// Outputs
		.o_exp_a (round_exp),
		.o_frac_a(round_frac)
	);

	assign zero_sign = o_RESULT_SIGN_FLIP_3;
	assign round_sign = o_RESULT_SIGN_FLIP_3 ^ o_sign_c_reg_3;
	
	assign zero_exp  = 8'b0000_0000;
	assign zero_frac = {sincos_9,31'b0};
	
	assign {o_sign_a,o_exp_a,o_frac_a,o_sincos,o_valid}  = o_X_ZERO_CAL_3 ? {zero_sign,zero_exp,zero_frac,sincos_9,o_valid_3}:
														 {round_sign,round_exp,round_frac,sincos_9,o_valid_3};	



	
endmodule
	
	
	
	
	
	
	
	
	
