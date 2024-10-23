module L_MEM (
    input [6:0] ADDR,
    input       i_clk,
    input       i_valid,
    output      [167:0] COF_DATA_L
);
    reg [167:0] L_LUT [0:127]; 
    reg [6:0] SYNC_ADDR;

    initial begin
        $readmemb("L_LUT.coe",L_LUT,0,127);
    end

    always@(posedge i_clk) begin
        if(i_valid)
            SYNC_ADDR <= ADDR;
        else 
            SYNC_ADDR <= 7'b0000_000;
    end

    assign COF_DATA_L = L_LUT[SYNC_ADDR];

endmodule