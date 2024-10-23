module ZERO_PRO(
    input i_PROC_FLAG,
    input  [7:0]  i_exp,
    output [7:0]  o_exp
);

    assign o_exp = i_PROC_FLAG ? 8'b1000_0000 : i_exp;

endmodule