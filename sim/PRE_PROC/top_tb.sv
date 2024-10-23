module tb_top();

    reg [167:0] L_LUT [0:127];
    logic [167:0] ADDR1;

    initial begin
        $readmemb("L_LUT.coe",L_LUT,0,127);
        #10;
        ADDR1 = L_LUT[0];
        $finish;
    end

    initial begin
        $fsdbDumpfile("tb.fsdb");
        $fsdbDumpvars;
        $fsdbDumpMDA();
    end

endmodule
