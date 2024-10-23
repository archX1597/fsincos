
module lzd_41(
        input [40:0] i_detect_op,
        output [5:0] o_lzd_num
    );
    reg [15:0] value_16;
    reg [7 :0] value_8;
    // @SuppressProblem -type partially_unread_data -count 1 -length 1
    reg [3 :0] value_4;
    // @SuppressProblem -type partially_unread_data -count 1 -length 1
    reg [3 :0] value_4_32;
    reg [4 :0] result_32;
    reg [2 :0] result_8 ;
    wire  [7:0] i_detect_op_8;
    wire        val_sel ;
    wire        val0_sel;
    
    assign i_detect_op_8 = i_detect_op[39:32];

    assign val_sel   = (|i_detect_op[39:32]);
    assign val0_sel  = i_detect_op[40];
    always @(*) begin
        result_32[4] = (i_detect_op[31:16] == 16'b0);
        value_16     = result_32[4] ? i_detect_op[15:0] : i_detect_op[31:16];
        result_32[3] = (value_16[15:8] == 8'b0);
        value_8      = result_32[3] ? value_16[7:0] : value_16[15:8];
        result_32[2] = (value_8[7:4] == 4'b0);
        value_4      = result_32[2] ? value_8[3:0] : value_8[7:4];
        result_32[1] = (value_4[3:2] == 2'b0);
        result_32[0] = result_32[1] ? ~value_4[1] : ~value_4[3];
    end

    always @(*) begin
        result_8[2] = (i_detect_op_8[7:4] == 4'b0);
        value_4_32     = result_8[2] ? i_detect_op_8[3:0] : i_detect_op_8[7:4];
        result_8[1] = (value_4_32[3:2] == 2'b0);
        result_8[0] = result_8[1] ? ~value_4_32[1] : ~value_4_32[3];
    end

    assign o_lzd_num = val0_sel? 6'b0 :
                       val_sel ? {3'b000,result_8}+6'b1:
                       {1'b0,result_32} + 6'd9 ;
endmodule
