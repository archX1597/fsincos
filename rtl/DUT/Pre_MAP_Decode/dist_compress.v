module dist_compress#(
    parameter EXP_WIDTH  = 8,
    parameter FRAC_WIDTH = 32 
)(
        input                                i_sign_a ,
        input         [EXP_WIDTH - 1: 0]     i_exp_a  ,
        input         [FRAC_WIDTH- 1: 0]     i_frac_a ,
        input                                i_sincos ,
        output        [EXP_WIDTH - 1: 0]     o_exp_a_compressed  ,
        output        [FRAC_WIDTH- 1: 0]     o_frac_a_compressed ,
        output                               o_sign_a_compressed,
        output                               X_ZERO_FLAG    ,
        output                               RESULT_SIGN_FLIP
);

       //from 0-1
wire exp_neg_or_pos;
assign exp_neg_or_pos = i_exp_a[EXP_WIDTH-1]; //1 IS NEG,0 is pos
       wire frac_eq_z_ori ;
       assign frac_eq_z_ori = ~i_frac_a[FRAC_WIDTH-1];
       //if the exp is neg , no shift no compress
        
       //shift 

       reg [FRAC_WIDTH-1:0] shifted_frac;

       always@(*) begin
        case(i_exp_a )
            8'd0:shifted_frac  = {i_frac_a[30:0],1'b0  };
            8'd1:shifted_frac  = {i_frac_a[29:0],2'b0  };
            8'd2:shifted_frac  = {i_frac_a[28:0],3'b0  };
            8'd3:shifted_frac  = {i_frac_a[27:0],4'b0  };
            8'd4:shifted_frac  = {i_frac_a[26:0],5'b0  };
            8'd5:shifted_frac  = {i_frac_a[25:0],6'b0  };
            8'd6:shifted_frac  = {i_frac_a[24:0],7'b0  };
            8'd7:shifted_frac  = {i_frac_a[23:0],8'b0  };
            8'd8:shifted_frac  = {i_frac_a[22:0],9'b0  };
            8'd9:shifted_frac  = {i_frac_a[21:0],10'b0 };
            8'd10:shifted_frac = {i_frac_a[20:0],11'b0 };
            8'd11:shifted_frac = {i_frac_a[19:0],12'b0 };
            8'd12:shifted_frac = {i_frac_a[18:0],13'b0 };
            8'd13:shifted_frac = {i_frac_a[17:0],14'b0 };
            8'd14:shifted_frac = {i_frac_a[16:0],15'b0 };
            8'd15:shifted_frac = {i_frac_a[15:0],16'b0 };
            8'd16:shifted_frac = {i_frac_a[14:0],17'b0 };
            8'd17:shifted_frac = {i_frac_a[13:0],18'b0 };
            8'd18:shifted_frac = {i_frac_a[12:0],19'b0 };
            8'd19:shifted_frac = {i_frac_a[11:0],20'b0 };
            8'd20:shifted_frac = {i_frac_a[10:0],21'b0 };
            8'd21:shifted_frac = {i_frac_a[9 :0],22'b0 };
            8'd22:shifted_frac = {i_frac_a[8 :0],23'b0 };
            8'd23:shifted_frac = {i_frac_a[7 :0],24'b0 };
            8'd24:shifted_frac = {i_frac_a[6 :0],25'b0 };
            8'd25:shifted_frac = {i_frac_a[5 :0],26'b0 };
            8'd26:shifted_frac = {i_frac_a[4 :0],27'b0 };
            8'd27:shifted_frac = {i_frac_a[3 :0],28'b0 };
            8'd28:shifted_frac = {i_frac_a[2 :0],29'b0 };
            8'd29:shifted_frac = {i_frac_a[1 :0],30'b0 };
            8'd30:shifted_frac = {i_frac_a[0 :0],31'b0 };
            default:shifted_frac = { 32'b0 };
        endcase
    end
       
        wire   frac_eq_z_shifted;
        assign frac_eq_z_shifted   =  ~(|shifted_frac[31:0]);
        wire [4:0] o_lzd_num;
        
        lzd32 u_lzd32(
            .i_detect_op 	( shifted_frac  ),
            .o_lzd_num   	( o_lzd_num    )
        );

        wire [7:0] exp_result;
        reg [31:0] result_frac;
        // @SuppressProblem -type arithmetic_operation_extend_const_unsized_literal -count 1 -length 1
        // @SuppressProblem -type assign_truncation_const_unsized_literal -count 1 -length 1
        assign  exp_result  = -(o_lzd_num+1);

        always@(*) begin
            case(o_lzd_num)
                5'd0:result_frac  = {shifted_frac[31:0]      };
                5'd1:result_frac  = {shifted_frac[30:0],1'b0 };
                5'd2:result_frac  = {shifted_frac[29:0],2'b0 };
                5'd3:result_frac  = {shifted_frac[28:0],3'b0 };
                5'd4:result_frac  = {shifted_frac[27:0],4'b0 };
                5'd5:result_frac  = {shifted_frac[26:0],5'b0 };
                5'd6:result_frac  = {shifted_frac[25:0],6'b0 };
                5'd7:result_frac  = {shifted_frac[24:0],7'b0 };
                5'd8:result_frac  = {shifted_frac[23:0],8'b0 };
                5'd9:result_frac  = {shifted_frac[22:0],9'b0 };
                5'd10:result_frac = {shifted_frac[21:0],10'b0 };
                5'd11:result_frac = {shifted_frac[20:0],11'b0 };
                5'd12:result_frac = {shifted_frac[19:0],12'b0 };
                5'd13:result_frac = {shifted_frac[18:0],13'b0 };
                5'd14:result_frac = {shifted_frac[17:0],14'b0 };
                5'd15:result_frac = {shifted_frac[16:0],15'b0 };
                5'd16:result_frac = {shifted_frac[15:0],16'b0 };
                5'd17:result_frac = {shifted_frac[14:0],17'b0 };
                5'd18:result_frac = {shifted_frac[13:0],18'b0 };
                5'd19:result_frac = {shifted_frac[12:0],19'b0 };
                5'd20:result_frac = {shifted_frac[11:0],20'b0 };
                5'd21:result_frac = {shifted_frac[10:0],21'b0 };
                5'd22:result_frac = {shifted_frac[9:0],22'b0 };
                5'd23:result_frac = {shifted_frac[8:0],23'b0 };
                5'd24:result_frac = {shifted_frac[7:0],24'b0 };
                5'd25:result_frac = {shifted_frac[6:0],25'b0 };
                5'd26:result_frac = {shifted_frac[5:0],26'b0 };
                5'd27:result_frac = {shifted_frac[4:0],27'b0 };
                5'd28:result_frac = {shifted_frac[3:0],28'b0 };
                5'd29:result_frac = {shifted_frac[2:0],29'b0 };
                5'd30:result_frac = {shifted_frac[1:0],30'b0 };
                5'd31:result_frac = {shifted_frac[0:0],31'b0 };
                default:result_frac = { 32'b0 };
            endcase
        end
        
        assign o_frac_a_compressed = ~exp_neg_or_pos ? result_frac : i_frac_a;
        assign o_exp_a_compressed  = ~exp_neg_or_pos ? exp_result  : i_exp_a ;
        assign X_ZERO_FLAG         = ~exp_neg_or_pos ? frac_eq_z_shifted:frac_eq_z_ori;
        assign RESULT_SIGN_FLIP    = ~i_sincos&i_sign_a;
        assign o_sign_a_compressed = 1'b0;
        //sign logic 
        //TEST POINT 0 TO EVERY

endmodule

module ZERO_NORMAL#(
    parameter EXP_WIDTH  = 8,
    parameter FRAC_WIDTH = 32 
)(
        input                                i_o_sign_a_compressed ,
        input        [EXP_WIDTH - 1: 0]      i_o_exp_a_compressed  ,
        input        [FRAC_WIDTH- 1: 0]      i_o_frac_a_compressed ,
        input                                i_o_sincos_compressed,
        input                                i_X_ZERO_FLAG    ,
        input                                i_RESULT_SIGN_FLIP ,

        output                               o_sign_a_compressed ,
        output        [EXP_WIDTH - 1: 0]     o_exp_a_compressed  ,
        output        [FRAC_WIDTH- 1: 0]     o_frac_a_compressed ,
        output                               o_sincos_compressed,
        output                               X_ZERO_FLAG    ,
        output                               RESULT_SIGN_FLIP 
);
       assign o_sign_a_compressed  = i_o_sign_a_compressed;
       assign o_exp_a_compressed  =  i_X_ZERO_FLAG ? 8'b0 :i_o_exp_a_compressed;
       assign o_frac_a_compressed  = i_X_ZERO_FLAG ? 32'b0:i_o_frac_a_compressed;
       assign o_sincos_compressed  = i_o_sincos_compressed;
       assign X_ZERO_FLAG  = i_X_ZERO_FLAG;
       assign RESULT_SIGN_FLIP  = i_RESULT_SIGN_FLIP;

endmodule