module stage2 #(
		parameter EXP_WIDTH  = 8,
		parameter FRAC_WIDTH = 32
	)(
		input                                              i_clk,i_rstn,i_valid,
		input                                              i_st2_sign_a ,
		input         [EXP_WIDTH - 1: 0]                   i_st2_exp_a  ,
		input         [FRAC_WIDTH- 1: 0]                   i_st2_frac_a ,
		input                                              i_st2_sign_bias,
		input         [EXP_WIDTH - 1: 0]                   i_st2_exp_bias,
		input         [FRAC_WIDTH- 1: 0]                   i_st2_frac_bias,
		input                                              i_st2_sincos_proced,
		input                                              i_st2_RESULT_SIGN_FLIP,
		input                                              i_st2_X_ZERO_FLAG ,

		output  reg                                        o_st2_reg_X_APPRO_ZERO,
		output  reg                                        o_st2_reg_X_0_125_FLAG,
		output  reg                                        o_st2_reg_X_ZERO_CAL_FLAG,
		output  reg       [31 :0]                          o_st2_reg_Xi_FRAC,
		output  reg                                        o_st2_reg_SEL_L_OR_S,
		output  reg                                        o_st2_reg_st2_RESULT_SIGN_FLIP,	
		output  reg                        	               o_st2_reg_sincos_proced,
		output 	reg						 	               o_st2_reg_sign_c,                 
		output 	reg		[EXP_WIDTH - 1: 0] 				   o_st2_reg_exp_c,  
		output 	reg		[FRAC_WIDTH- 1: 0]                 o_st2_reg_frac_c,
		output  reg                                        o_st2_valid,
		output  reg [3   :0]  o_st2_reg_COMPARE_DIST1_LOW,
 		output  reg [2   :0]  o_st2_reg_COMPARE_DIST2_LOW
	);


       wire 	                               o_X_APPRO_ZERO;
       wire                                    o_X_0_125_FLAG;
       wire                                    o_X_ZERO_CAL_FLAG;
       wire  [31 :0]                           o_Xi_FRAC;
       wire                                    o_SEL_L_OR_S;
       wire                                    o_st2_RESULT_SIGN_FLIP;	
       wire                   	               o_sincos_proced;
       wire 				 	               o_sign_c;                 
       wire [EXP_WIDTH - 1: 0] 				   o_exp_c;  
       wire [FRAC_WIDTH- 1: 0]                 o_frac_c;
       wire      [3   :0]                      o_COMPARE_DIST1_LOW;
       wire      [2   :0]                      o_COMPARE_DIST2_LOW;

	
	assign o_st2_RESULT_SIGN_FLIP = i_st2_RESULT_SIGN_FLIP ;

	FSUB_N32_D0OR1 #(
		.FRAC_WIDTH(FRAC_WIDTH),
		.EXP_WIDTH (EXP_WIDTH)
	)
	u_FSUB_N32_D0OR1 (
		// Inputs
		.i_exp_a (i_st2_exp_a),
		.i_exp_b (i_st2_exp_bias),
		.i_frac_a(i_st2_frac_a),
		.i_frac_b(i_st2_frac_bias),
		.i_sign_a(i_st2_sign_a),
		.i_sign_b(i_st2_sign_bias),
		// Outputs
		.o_exp_c (o_exp_c),
		.o_frac_c(o_frac_c),
		.o_sign_c(o_sign_c)
	);

	parameter POW_2_N19 = 8'b0_0001_0011  ;
	parameter POW_2_N9  = 8'b0_0000_1001  ;



	CAL_BIAS #(
		.POW_2_N19(POW_2_N19),
		.POW_2_N9 (POW_2_N9)
	)
	u_CAL_BIAS (
		// Inputs
		.i_X_ZERO_FLAG    (i_st2_X_ZERO_FLAG|~o_frac_c[31]),
		.i_exp            (o_exp_c),
		.i_frac           (o_frac_c),
		.i_sincos_proced  (i_st2_sincos_proced), //0 == sin ,1 == cos
		// Outputs
		.o_COMPARE_DIST1_LOW(  o_COMPARE_DIST1_LOW ),
		.o_COMPARE_DIST2_LOW(  o_COMPARE_DIST2_LOW ),
		.o_SEL_L_OR_S     (o_SEL_L_OR_S),
		.o_X_0_125_FLAG   (o_X_0_125_FLAG),
		.o_X_APPRO_ZERO   (o_X_APPRO_ZERO),
		.o_X_ZERO_CAL_FLAG(o_X_ZERO_CAL_FLAG),
		.o_Xi_FRAC        (o_Xi_FRAC),
		.o_sincos_proced  (o_sincos_proced)
	);

	/*always@(posedge i_clk or negedge i_rstn) begin
		if(!i_rstn)  begin
		end
		else if(i_valid) begin
		end
		else begin
		end
	end*/

	always@(posedge i_clk or negedge i_rstn) begin
		if(!i_rstn)  begin
			o_st2_reg_X_APPRO_ZERO         <= 1'd0;
 			o_st2_reg_X_0_125_FLAG         <= 1'd0;
 			o_st2_reg_X_ZERO_CAL_FLAG      <= 1'd0;
 			o_st2_reg_Xi_FRAC              <= 0;
 			o_st2_reg_SEL_L_OR_S           <= 1'd0;
 			o_st2_reg_st2_RESULT_SIGN_FLIP <= 1'd0;        
 			o_st2_reg_sincos_proced        <= 1'd0;
 			o_st2_reg_sign_c               <= 1'd0;        
 			o_st2_reg_exp_c                <= 8'd0;
 			o_st2_reg_frac_c               <= 0;
            o_st2_reg_COMPARE_DIST1_LOW   <= 4'd0;
			o_st2_reg_COMPARE_DIST2_LOW   <= 3'd0;
		end
		else if(i_valid) begin
			o_st2_reg_X_APPRO_ZERO         <=   o_X_APPRO_ZERO;    
 			o_st2_reg_X_0_125_FLAG         <=   o_X_0_125_FLAG;    
 			o_st2_reg_X_ZERO_CAL_FLAG      <=   o_X_ZERO_CAL_FLAG;       
 			o_st2_reg_Xi_FRAC              <=   o_Xi_FRAC;
 			o_st2_reg_SEL_L_OR_S           <=   o_SEL_L_OR_S;  
 			o_st2_reg_st2_RESULT_SIGN_FLIP <=   o_st2_RESULT_SIGN_FLIP;            
 			o_st2_reg_sincos_proced        <=   o_sincos_proced;     
 			o_st2_reg_sign_c               <=   o_sign_c;                          
 			o_st2_reg_exp_c                <=   o_exp_c;  
 			o_st2_reg_frac_c               <=   o_frac_c;
			o_st2_reg_COMPARE_DIST1_LOW    <=   o_COMPARE_DIST1_LOW; 
			o_st2_reg_COMPARE_DIST2_LOW    <=   o_COMPARE_DIST2_LOW; 
		end
		else begin
			o_st2_reg_X_APPRO_ZERO         <=  o_st2_reg_X_APPRO_ZERO        ;
 			o_st2_reg_X_0_125_FLAG         <=  o_st2_reg_X_0_125_FLAG        ;
 			o_st2_reg_X_ZERO_CAL_FLAG      <=  o_st2_reg_X_ZERO_CAL_FLAG     ;  
 			o_st2_reg_Xi_FRAC              <=  o_st2_reg_Xi_FRAC             ;
 			o_st2_reg_SEL_L_OR_S           <=  o_st2_reg_SEL_L_OR_S          ;
 			o_st2_reg_st2_RESULT_SIGN_FLIP <=  o_st2_reg_st2_RESULT_SIGN_FLIP;            
 			o_st2_reg_sincos_proced        <=  o_st2_reg_sincos_proced       ;
 			o_st2_reg_sign_c               <=  o_st2_reg_sign_c              ;            
 			o_st2_reg_exp_c                <=  o_st2_reg_exp_c               ;
 			o_st2_reg_frac_c               <=  o_st2_reg_frac_c               ;
			o_st2_reg_COMPARE_DIST1_LOW    <=  o_st2_reg_COMPARE_DIST1_LOW;
			o_st2_reg_COMPARE_DIST2_LOW    <=  o_st2_reg_COMPARE_DIST2_LOW;
		end
	end

	 always@(posedge i_clk or negedge i_rstn) begin
		if(!i_rstn)
			o_st2_valid <= 1'b0;
		else 
			o_st2_valid <= i_valid;
	end

endmodule