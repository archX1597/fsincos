interface f41_if(input clk,input rst_n);
	logic [7 :0] exp8;
	logic [31:0] frac32;
	logic [35:0] frac36;
	logic [39:0] frac40;
	logic        sign;
	logic        sin_cos;
	logic        X_ZERO_FLAG;
	logic        D_ZERO_FLAG;
	logic        RESULT_SIGN_FLIP;
	//control signal
	logic valid;
endinterface


