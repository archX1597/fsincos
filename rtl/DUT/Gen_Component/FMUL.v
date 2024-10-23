module FMUL #(
    parameter FRAC_WIDTH = 40,
    parameter EXP_WIDTH  = 8 
) (
        input                             i_sign_a ,
        input  signed [ EXP_WIDTH - 1: 0] i_exp_a  ,
        input         [ FRAC_WIDTH- 1: 0] i_frac_a ,

        input                             i_sign_b ,
        input  signed [ EXP_WIDTH - 1: 0] i_exp_b  ,
        input         [ FRAC_WIDTH- 1: 0] i_frac_b ,

        output                            o_sign_c , 
        output signed [ EXP_WIDTH - 1: 0] o_exp_c  ,
        output        [ FRAC_WIDTH- 1: 0] o_frac_c
);
    
    wire [EXP_WIDTH : 0]  exp_c,exp_c_normalized;
	wire                  zero;
    parameter exp_zero = 8'b1000_0000;
    // @SuppressProblem -type partially_unread_data -count 1 -length 1
    wire [2*FRAC_WIDTH-1 : 0]  MUL_FULL_WIDTH;
    wire [FRAC_WIDTH     : 0]  MUL_RESULT_TOSHIFT;

    // @SuppressProblem -type assign_extend_non_const_arithmetic -count 1 -length 1
    assign MUL_FULL_WIDTH     = i_frac_b*i_frac_a;
    assign MUL_RESULT_TOSHIFT = MUL_FULL_WIDTH[2*FRAC_WIDTH-1:FRAC_WIDTH-1];
	assign zero               = ~(i_frac_b[FRAC_WIDTH-1]&i_frac_a[FRAC_WIDTH-1]);
    
    //EXP
	wire normalize_shift;
	assign normalize_shift  = MUL_FULL_WIDTH[2*FRAC_WIDTH-1];
    // @SuppressProblem -type assign_extend_non_const_arithmetic -count 1 -length 1
    assign exp_c  = zero ? exp_zero :i_exp_b + i_exp_a ;
    // @SuppressProblem -type arithmetic_operation_extend_const_other -count 1 -length 1
    // @SuppressProblem -type assign_extend_non_const_arithmetic -count 1 -length 1
    assign exp_c_normalized = i_exp_a + i_exp_b + 1'b1;
    
    assign o_sign_c         = i_sign_a ^ i_sign_b;
    // @SuppressProblem -type assign_truncation_non_const_other -count 1 -length 1
    assign o_exp_c          = normalize_shift  ? exp_c_normalized : exp_c;
    assign o_frac_c         = normalize_shift  ? MUL_RESULT_TOSHIFT[FRAC_WIDTH : 1] : MUL_RESULT_TOSHIFT [FRAC_WIDTH-1 : 0];

endmodule