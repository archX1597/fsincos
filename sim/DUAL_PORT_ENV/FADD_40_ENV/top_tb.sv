`define CLK_PERIOD 5
`define FRAC_WIDTH 40
module top_tb();
 logic rst_n,clk;
 int FRAC_WIDTH;
 f41_if input_if_0(.clk(clk),.rst_n(rst_n)
	  );
f41_if input_if_1(.clk(clk),.rst_n(rst_n)
	  );
 f41_if output_if(.clk(clk),.rst_n(rst_n)
 );
 
FADD_N40 u_FADD_N40(
	.i_sign_a 	( input_if_0.sign ),
	.i_exp_a  	( input_if_0.exp8  ),
	.i_frac_a 	( input_if_0.frac40 ),
	.i_sign_b 	( input_if_1.sign  ),
	.i_exp_b  	( input_if_1.exp8    ),
	.i_frac_b 	( input_if_1.frac40   ),
	.o_sign_c 	( output_if.sign  ),
	.o_exp_c  	( output_if.exp8  ),
	.o_frac_c 	( output_if.frac40   )
 );

	initial begin
		clk = 1'b0;
		rst_n = 1'b0;
		run_test("f_env");
	end
	
	initial begin
		uvm_config_db#(virtual f41_if)::set(null,"uvm_test_top.i0_agt.drv","drv_vif",input_if_0);
		uvm_config_db#(virtual f41_if)::set(null,"uvm_test_top.i1_agt.drv","drv_vif",input_if_1);
	end
	
	initial begin
		uvm_config_db#(virtual f41_if)::set(null,"uvm_test_top.i0_agt.mon","mon_vif",input_if_0);
		uvm_config_db#(virtual f41_if)::set(null,"uvm_test_top.i1_agt.mon","mon_vif",input_if_1);
		uvm_config_db#(virtual f41_if)::set(null,"uvm_test_top.o_agt.mon","mon_vif",output_if);
	end
	
	initial begin
		FRAC_WIDTH = `FRAC_WIDTH;
		uvm_config_db#(int)::set(null,"uvm_test_top.i0_agt.mon","width",FRAC_WIDTH);
		uvm_config_db#(int)::set(null,"uvm_test_top.i1_agt.mon","width",FRAC_WIDTH);
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
