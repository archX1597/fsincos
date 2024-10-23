module stage1 #(
		parameter EXP_WIDTH  = 8,
		parameter FRAC_WIDTH = 32
	)(
		input                             i_clk,i_rstn,i_valid,
		input                             i_sign_a ,
		input         [EXP_WIDTH - 1: 0]  i_exp_a  ,
		input         [FRAC_WIDTH- 1: 0]  i_frac_a ,
		input                             i_sincos ,

		output reg                       o_st1_reg_sign_a          ,
		output reg    [EXP_WIDTH - 1: 0] o_st1_reg_exp_a           ,
		output reg    [FRAC_WIDTH- 1: 0] o_st1_reg_frac_a          ,
		output reg                       o_st1_reg_sign_bias       ,
		output reg    [EXP_WIDTH - 1: 0] o_st1_reg_exp_bias        ,
		output reg    [FRAC_WIDTH- 1: 0] o_st1_reg_frac_bias       ,
		output reg                       o_st1_reg_sincos_proced   ,
		output reg                       o_st1_reg_RESULT_SIGN_FLIP,
		output reg                       o_X_st1_reg_ZERO_FLAG     ,
		output reg                       o_st1_valid              

	);
	wire                        o_sign_a ;
	wire    [EXP_WIDTH - 1: 0]  o_exp_a  ;
	wire    [FRAC_WIDTH- 1: 0]  o_frac_a ;
	wire                        o_sign_bias;
	wire    [EXP_WIDTH - 1: 0]  o_exp_bias;
	wire    [FRAC_WIDTH- 1: 0]  o_frac_bias;
	wire                        o_sincos_proced;
	wire                        o_RESULT_SIGN_FLIP;
	wire                        X_ZERO_FLAG;


	wire [EXP_WIDTH - 1: 0]    o_exp_a_compressed;
	wire [FRAC_WIDTH- 1: 0]    o_frac_a_compressed;
	wire                       o_sign_a_compressed;
	wire					   RESULT_SIGN_FLIP;

	dist_compress #(
		.EXP_WIDTH (EXP_WIDTH),
		.FRAC_WIDTH(FRAC_WIDTH)
	)
	u_dist_compress (
		// Inputs
		.i_exp_a            (i_exp_a),
		.i_frac_a           (i_frac_a),
		.i_sign_a           (i_sign_a),
		.i_sincos           (i_sincos),
		// Outputs
		.RESULT_SIGN_FLIP   (RESULT_SIGN_FLIP),
		.X_ZERO_FLAG        (X_ZERO_FLAG),
		.o_exp_a_compressed (o_exp_a_compressed),
		.o_frac_a_compressed(o_frac_a_compressed),
		.o_sign_a_compressed(o_sign_a_compressed)
	);



	pre_MAP #(
		.EXP_WIDTH (EXP_WIDTH),
		.FRAC_WIDTH(FRAC_WIDTH)
	)
	u_pre_MAP (
		// Inputs
		.i_RESULT_SIGN_FLIP(RESULT_SIGN_FLIP),
		.i_exp_a           (o_exp_a_compressed),
		.i_frac_a          (o_frac_a_compressed),
		.i_sign_a          (o_sign_a_compressed),
		.i_sincos_proced   (i_sincos),
		// Outputs
		.o_RESULT_SIGN_FLIP(o_RESULT_SIGN_FLIP),
		.o_exp_a           (o_exp_a),
		.o_exp_bias        (o_exp_bias),
		.o_frac_a          (o_frac_a),
		.o_frac_bias       (o_frac_bias),
		.o_sign_a          (o_sign_a),
		.o_sign_bias       (o_sign_bias),
		.o_sincos_proced   (o_sincos_proced)
	);

	//reg
	always@(posedge i_clk or negedge i_rstn) begin
		if(~i_rstn) begin
	         o_st1_reg_sign_a           <= 1'b0;
	         o_st1_reg_exp_a            <= 8'b0;
	         o_st1_reg_frac_a           <= 32'b0;
	         o_st1_reg_sign_bias        <= 1'b0;
	         o_st1_reg_exp_bias         <= 8'd0;
	         o_st1_reg_frac_bias        <= 0;
	         o_st1_reg_sincos_proced    <= 1'd0;
	         o_st1_reg_RESULT_SIGN_FLIP <= 1'd0;
	         o_X_st1_reg_ZERO_FLAG      <= 1'd0;
		end
		else if(i_valid) begin
             o_st1_reg_sign_a           <= o_sign_a ;           
             o_st1_reg_exp_a            <= o_exp_a  ;           
             o_st1_reg_frac_a           <= o_frac_a ;           
             o_st1_reg_sign_bias        <= o_sign_bias;         
             o_st1_reg_exp_bias         <= o_exp_bias;          
             o_st1_reg_frac_bias        <= o_frac_bias;         
             o_st1_reg_sincos_proced    <= o_sincos_proced;     
             o_st1_reg_RESULT_SIGN_FLIP <= o_RESULT_SIGN_FLIP;  
             o_X_st1_reg_ZERO_FLAG      <= X_ZERO_FLAG;         
        end
		else begin
            o_st1_reg_sign_a           <=   o_st1_reg_sign_a          ;
            o_st1_reg_exp_a            <=   o_st1_reg_exp_a           ;
            o_st1_reg_frac_a           <=   o_st1_reg_frac_a          ;
            o_st1_reg_sign_bias        <=   o_st1_reg_sign_bias       ;
            o_st1_reg_exp_bias         <=   o_st1_reg_exp_bias        ;
            o_st1_reg_frac_bias        <=   o_st1_reg_frac_bias       ;
            o_st1_reg_sincos_proced    <=   o_st1_reg_sincos_proced   ;
            o_st1_reg_RESULT_SIGN_FLIP <=   o_st1_reg_RESULT_SIGN_FLIP;
            o_X_st1_reg_ZERO_FLAG      <=   o_X_st1_reg_ZERO_FLAG     ;
	  end
	end

	always@(posedge i_clk or negedge i_rstn) begin
		if(!i_rstn)
			o_st1_valid <= 1'b0;
		else 
			o_st1_valid <= i_valid;
	end
	
endmodule
