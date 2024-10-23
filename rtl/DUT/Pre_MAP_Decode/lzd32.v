module lzd32(
    input  [31:0] i_detect_op,
    output [4:0] o_lzd_num
);
reg [15:0] value_16;
reg [7 :0] value_8;
// @SuppressProblem -type partially_unread_data -count 1 -length 1
reg [3 :0] value_4;
reg [4 :0] result_32;

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

assign o_lzd_num = result_32;
endmodule
