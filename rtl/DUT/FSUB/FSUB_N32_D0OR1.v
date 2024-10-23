module FSUB_N32_D0OR1 
#( parameter FRAC_WIDTH = 32,
      parameter EXP_WIDTH  = 8
     )
    (

        input                             i_sign_a ,
        input  signed [EXP_WIDTH - 1: 0] i_exp_a  ,
        input         [FRAC_WIDTH- 1: 0] i_frac_a ,

        input                             i_sign_b ,
        input  signed [EXP_WIDTH - 1: 0] i_exp_b  ,
        input         [FRAC_WIDTH- 1: 0] i_frac_b ,

        output                            o_sign_c ,
        output signed [EXP_WIDTH - 1: 0] o_exp_c  ,
        output        [FRAC_WIDTH- 1: 0] o_frac_c

    );

    //data path signal
    wire  [EXP_WIDTH -1 : 0]  exp_f,exp_close                         ;
    wire  [EXP_WIDTH    : 0]  diff_a_sub_b                                    ;
    // @SuppressProblem -type partially_unread_data -count 1 -length 1
    wire  [EXP_WIDTH    : 0]  diff_b_sub_a                                    ;
    wire  [FRAC_WIDTH-1 : 0]  esmall_op32,elarge_op32                         ;
    wire  [FRAC_WIDTH-1 : 0]  close_result32                                  ;             

    //control
    wire   exp_a_lt_b                                       ;
    wire   exp_a_neq_b                                      ;
    wire   far_sign                                         ;
    wire   close_sign                                       ;
   

    // @SuppressProblem -type assign_extend_non_const_arithmetic -count 1 -length 1
    assign diff_a_sub_b   = i_exp_a - i_exp_b               ;
    // @SuppressProblem -type assign_extend_non_const_arithmetic -count 1 -length 1
    assign diff_b_sub_a   = i_exp_b - i_exp_a               ;

    assign exp_a_neq_b    = |diff_a_sub_b                   ;
    assign exp_a_lt_b     = diff_b_sub_a[EXP_WIDTH]        ;
    //if exp(A) == exp(B),diff_a_sub_b = 8'b0000_0000
    assign esmall_op32    = exp_a_lt_b ? i_frac_b : i_frac_a ;
    assign elarge_op32    = exp_a_lt_b ? i_frac_a : i_frac_b ;
    // if exp(A) == exp(B),can't check the value of A or B

    //far path
    assign exp_f                      = exp_a_lt_b ?  i_exp_a  :  i_exp_b ;
    assign far_sign                   = exp_a_lt_b ?  i_sign_a : i_sign_b ;
    //close path
    // outports wire
    fadd_close_N32 u_fadd_close(
    	.exp_a_neq_b    	( exp_a_neq_b     ),
    	.far_sign       	( far_sign        ),
    	.exp_f          	( exp_f           ),
    	.esmall_op32    	( esmall_op32     ),
    	.elarge_op32    	( elarge_op32     ),
    	.close_result32 	( close_result32  ),
    	.exp_close      	( exp_close       ),
        .close_sign         ( close_sign)
    );



    assign o_exp_c             = exp_close      ;
    assign o_frac_c            = close_result32 ;
    assign o_sign_c            = close_sign     ;
endmodule