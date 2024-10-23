import uvm_pkg::*;
`define CLK_PERIOD 5
`define FRAC_WIDTH 32
module top_tb();
 logic rst_n,clk;
 int FRAC_WIDTH;
 f41_if input_if_0(.clk(clk),.rst_n(rst_n)
	  );
 f41_if output_if(.clk(clk),.rst_n(rst_n)
 );

top_single #(
			.EXP_WIDTH (8),
			.FRAC_WIDTH(32)
		)
		u_top (
			// Inputs
			.i_clk   (input_if_0.clk),
			.i_exp_a (input_if_0.exp8),
			.i_frac_a(input_if_0.frac32),
			.i_rstn  (input_if_0.rst_n),
			.i_sign_a(input_if_0.sign),
			.i_sincos(input_if_0.sin_cos),
			.i_valid (input_if_0.valid),
			// Outputs
			.o_exp_a (output_if.exp8),
			.o_frac_a(output_if.frac32),
			.o_sign_a(output_if.sign),
			.o_sincos(output_if.sin_cos),
			.o_valid (output_if.valid),
			.o_allow (input_if_0.allow)
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
		$fsdbDumpMDA();
    end

	always begin
		#5 clk = ~clk;
	end

	initial begin
		#12 rst_n = 1'b1;
	end

endmodule
