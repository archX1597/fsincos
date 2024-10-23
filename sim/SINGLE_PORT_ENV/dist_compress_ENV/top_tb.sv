import uvm_pkg::*;
`define CLK_PERIOD 5
`define FRAC_WIDTH 32
module FADD_tb();
 logic rst_n,clk;
 int FRAC_WIDTH;
 f41_if input_if_0(.clk(clk),.rst_n(rst_n)
	  );
 f41_if output_if(.clk(clk),.rst_n(rst_n)
 );
f41_if output_if0(.clk(clk),.rst_n(rst_n)
 );
 dist_compress u_dist_compress(
	  	.i_sign_a 	( input_if_0.sign ),
		.i_exp_a  	( input_if_0.exp8  ),
		.i_frac_a 	( input_if_0.frac32 ),
		.i_sincos   (input_if_0.sin_cos),
        .o_exp_a_compressed  (output_if0.exp8),
        .o_frac_a_compressed (output_if0.frac32),
        .X_ZERO_FLAG         (output_if0.X_ZERO_FLAG),
        .RESULT_SIGN_FLIP    (output_if0.RESULT_SIGN_FLIP)
 );

 ZERO_NORMAL u_zero(
	.i_o_exp_a_compressed (output_if0.exp8),
	.i_o_frac_a_compressed(output_if0.frac32),
	.i_o_sincos_compressed(output_if0.sin_cos),
	.i_X_ZERO_FLAG        (output_if0.X_ZERO_FLAG),
	.i_RESULT_SIGN_FLIP   (output_if0.RESULT_SIGN_FLIP),
        .o_exp_a_compressed  (output_if.exp8),
        .o_frac_a_compressed (output_if.frac32),
        .o_sincos_compressed (output_if.sin_cos),
        .X_ZERO_FLAG    (output_if.X_ZERO_FLAG),
        .RESULT_SIGN_FLIP(output_if.RESULT_SIGN_FLIP)

 );

	initial begin
		clk = 1'b0;
		rst_n = 1'b0;
		run_test("f_env");
	end
	
	initial begin
		uvm_config_db#(virtual f41_if)::set(null,"uvm_test_top.i0_agt.drv","drv_vif",input_if_0);
	end
	
	initial begin
		uvm_config_db#(virtual f41_if)::set(null,"uvm_test_top.i0_agt.mon","mon_vif",input_if_0);
		uvm_config_db#(virtual f41_if)::set(null,"uvm_test_top.o_agt.mon","mon_vif",output_if);
	end
	
	initial begin
		FRAC_WIDTH = `FRAC_WIDTH;
		uvm_config_db#(int)::set(null,"uvm_test_top.i0_agt.mon","width",FRAC_WIDTH);
		uvm_config_db#(int)::set(null,"uvm_test_top.o_agt.mon","width",FRAC_WIDTH);
		uvm_config_db#(int)::set(null,"uvm_test_top.rfmodel","width",FRAC_WIDTH);
	end

	initial begin
        $fsdbDumpfile("tb.fsdb");
        $fsdbDumpvars(0);
    end

	always begin
		#5 clk = ~clk;
	end

	initial begin
		#12 rst_n = 1'b1;
	end

	logic d0;

	always @(posedge clk) begin
		d0              <= input_if_0.valid;  
		output_if.valid <= d0;
	end
endmodule
