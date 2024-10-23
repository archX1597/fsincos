module round #
(
    parameter EXP_WIDTH = 8,
    parameter FRAC_WIDTH = 40
)(
    input   signed [EXP_WIDTH - 1: 0]   i_exp_a  ,
    input          [39 : 0]   i_frac_a ,

    output  signed [EXP_WIDTH - 1: 0]   o_exp_a  ,
    output         [31: 0]   o_frac_a 
);

    reg STK,G,R;
    reg round  ;
    reg [EXP_WIDTH-1:0] PRE_exp ;

    wire [FRAC_WIDTH:0] frac_rounded;

    assign STK = |i_frac_a[FRAC_WIDTH-34:0];
    assign G   = i_frac_a[8];
    assign R   = i_frac_a[7];
    // @SuppressProblem -type arithmetic_operation_extend_const_other -count 1 -length 1
    assign PRE_exp = i_exp_a +1'b1;

    //round to even 
    assign round = R & (G|STK);

    assign frac_rounded = {1'b0,i_frac_a}+round;

    assign o_frac_a = frac_rounded[FRAC_WIDTH] ? frac_rounded[FRAC_WIDTH : FRAC_WIDTH-31] : frac_rounded[FRAC_WIDTH-1 :  FRAC_WIDTH-32];

    assign o_exp_a  = frac_rounded[FRAC_WIDTH] ? PRE_exp : i_exp_a;


endmodule