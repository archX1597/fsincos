module S_MEM (
    input [4:0] ADDR,
    input       i_clk,
    input       i_valid,
    output      [167:0] COF_DATA_S
);
    reg [167:0] S_LUT [0:31]; 
    reg [4:0] SYNC_ADDR;

    initial begin
        $readmemb("S_LUT.coe",S_LUT,0,31);
    end

    always@(posedge i_clk)begin
        if(i_valid)
            SYNC_ADDR <= ADDR;
        else 
            SYNC_ADDR <= 5'b0_00_00;
    end

    assign COF_DATA_S = S_LUT[SYNC_ADDR];

endmodule