module pre_MAP #(
		parameter EXP_WIDTH  = 8,
		parameter FRAC_WIDTH = 32
	)(
		input                             i_sign_a ,
		input         [EXP_WIDTH - 1: 0]  i_exp_a  ,
		input         [FRAC_WIDTH- 1: 0]  i_frac_a ,
		input                             i_sincos_proced,
		input                             i_RESULT_SIGN_FLIP,

		output                             o_RESULT_SIGN_FLIP,

		output                            o_sign_bias ,
		output        [EXP_WIDTH - 1: 0]  o_exp_bias  ,
		output        [FRAC_WIDTH- 1: 0]  o_frac_bias ,
		output                            o_sincos_proced,

		output                            o_sign_a ,
		output         [EXP_WIDTH - 1: 0] o_exp_a  ,
		output         [FRAC_WIDTH- 1: 0] o_frac_a
	);
	//D map-->>:
	//if the input is x_i and the i_sincos_proced is mode
	//

	//*/
	wire                       bias_sign       ;
	reg  [EXP_WIDTH - 1  : 0]  bias_exp        ;
	reg  [FRAC_WIDTH- 1  : 0]  bias_frac       ;
	wire [3              : 0]  map_code        ;//Map to different district
	reg  [2              : 0]  bias_sel        ;//select the different bias to map
	reg                        sign_sel        ;//select the diffrent sign: 0:pos 1：neg
	reg                        mode_sel        ;//select diffrent mode,if:0 hold on ,if 1  transfer the sin to cos or cos to sin
	reg                        bias_opsel      ;//select the bias methond ,if 0 :F41(a)-bias num else bias num -F41(a)

	wire                      path_sel         ;

	wire map_code_sel;
	assign map_code_sel    = (~&i_exp_a[7:2])||(i_exp_a==8'b1111_1100);
	assign map_code        = map_code_sel? 4'b0000:{ &i_exp_a[7:1] , i_exp_a[0] , i_frac_a[30:29]};


	always @(*) begin
		case(map_code)
			4'b01_00:
				{mode_sel,sign_sel,bias_sel,bias_opsel} = {1'b1,1'b0,4'b001_1} ;//
			4'b01_01:
				{mode_sel,sign_sel,bias_sel,bias_opsel} = {1'b1,1'b0,4'b001_1} ;
			4'b01_10:
				{mode_sel,sign_sel,bias_sel,bias_opsel} = {1'b1,1'b0,4'b001_1} ;
			4'b01_11:
				{mode_sel,sign_sel,bias_sel,bias_opsel} = {1'b1,1'b0,4'b001_1} ;
			4'b10_00:
				{mode_sel,sign_sel,bias_sel,bias_opsel} = {1'b1,1'b1&(i_sincos_proced)||1'b0&~(i_sincos_proced),4'b001_0} ;
			4'b10_01:
				{mode_sel,sign_sel,bias_sel,bias_opsel} = {1'b1,1'b1&(i_sincos_proced)||1'b0&~(i_sincos_proced),4'b001_0} ;
			4'b10_10:
				{mode_sel,sign_sel,bias_sel,bias_opsel} = {1'b0,1'b1&(i_sincos_proced)||1'b0&~(i_sincos_proced),4'b010_1} ;
			4'b10_11:
				{mode_sel,sign_sel,bias_sel,bias_opsel} = {1'b0,1'b1&(i_sincos_proced)||1'b0&~(i_sincos_proced),4'b010_1} ;
			4'b11_00:
				{mode_sel,sign_sel,bias_sel,bias_opsel} = {1'b0,1'b1&(i_sincos_proced)||1'b1&(~i_sincos_proced),4'b010_0} ;
			4'b11_01:
				{mode_sel,sign_sel,bias_sel,bias_opsel} = {1'b1,1'b1&(i_sincos_proced)||1'b1&(~i_sincos_proced),4'b011_1} ;
			4'b11_10:
				{mode_sel,sign_sel,bias_sel,bias_opsel} = {1'b1,1'b0&(i_sincos_proced)||1'b1&(~i_sincos_proced),4'b011_0} ;
			4'b11_11:
				{mode_sel,sign_sel,bias_sel,bias_opsel} = {1'b0,1'b0&(i_sincos_proced)||1'b1&(~i_sincos_proced),4'b100_1} ;
			default:
				{mode_sel,sign_sel,bias_sel,bias_opsel} = {6'b000_000} ;
		endcase
	end
	//fast path and slow path
	assign path_sel = ({mode_sel,sign_sel,bias_sel,bias_opsel} == 6'b000_000)? 1'b1:1'b0;

	always @(*) begin
		case(bias_sel)
			3'b001:
				{bias_exp,bias_frac} = {8'b1111_1110,1'b1,1'b0,30'b0};
			3'b010:
				{bias_exp,bias_frac} = {8'b1111_1111,1'b1,1'b0,30'b0};
			3'b011:
				{bias_exp,bias_frac} = {8'b1111_1111,1'b1,1'b1,30'b0};
			3'b100:
				{bias_exp,bias_frac} = {8'b0000_0000,1'b1,1'b0,30'b0};
			default:
				{bias_exp,bias_frac} = 40'h0000000000;
		endcase
	end

	assign bias_sign = ~bias_opsel;
	assign o_RESULT_SIGN_FLIP = i_RESULT_SIGN_FLIP ^ sign_sel;
	assign o_sincos_proced    = i_sincos_proced ^ mode_sel;

	assign o_sign_a        = (i_sign_a ^ bias_opsel);

	// outports wire



	assign { o_sign_bias,
			o_exp_bias,
			o_frac_bias } = ~path_sel ? {bias_sign,bias_exp,bias_frac}:{1'b0,1'b1,7'b0,32'b0};

	assign o_exp_a = i_exp_a;
	assign o_frac_a = i_frac_a;

endmodule

