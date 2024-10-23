module CAL_BIAS(
    input signed [7  :0]   i_exp,
    input        [31 :0]   i_frac,
    input                  i_sincos_proced,//0 == sin ,1 == cos

    input                  i_X_ZERO_FLAG,

    output                 o_X_APPRO_ZERO,
    output                 o_X_0_125_FLAG,
    output                 o_X_ZERO_CAL_FLAG,

    output       [31 :0]   o_Xi_FRAC  ,
    output                 o_SEL_L_OR_S ,
    output       [3   :0]  o_COMPARE_DIST1_LOW,
    output       [2   :0]  o_COMPARE_DIST2_LOW,
    output                 o_sincos_proced
);

    //XI_REC

    parameter POW_2_N19 = 8'b0_0001_0011;
    parameter POW_2_N9  = 8'b0_0000_1001;

    wire [1:0] dist_cal; //dist_cal == 2'b00 ,i_frac approximate 2*pi*x,
                     //dist_cal == 2'b01  i_frac [2**-18.2**-9锛�
                     //dist_cal == 2'b10  i_frac  [2**-9, 2**-3)
                     //dist_cal == 2'b11  i_frac  == 2**-3

    // @SuppressProblem -type partially_unread_data -count 1 -length 1
    wire [7 :0]   COMPARE_DIST1,COMPARE_DIST2;
	
    reg  [31:0]   TRANS_FRAC;
    wire X_0_125_FLAG ;

    assign COMPARE_DIST1 = POW_2_N19 + i_exp; //-N+19
    assign COMPARE_DIST2 = POW_2_N9  + i_exp;//-N+9 
    assign X_0_125_FLAG = (COMPARE_DIST2 == 8'd6)&(~i_X_ZERO_FLAG);
    assign o_X_0_125_FLAG  = X_0_125_FLAG;

    assign dist_cal          = COMPARE_DIST1[7] ? 2'b00 : //dist_cal < 2**-19
                           COMPARE_DIST2[7] ? 2'b01 : // 2**-19=<dist_cal <2**-9 
                           X_0_125_FLAG     ? 2'b11 :
                                              2'b10 ;      //2>=        

	assign o_COMPARE_DIST1_LOW =    COMPARE_DIST1 [3:0];
	assign o_COMPARE_DIST2_LOW =    COMPARE_DIST2 [2:0];




    always@(*) begin
        case(COMPARE_DIST2[2:0])
            3'd0:TRANS_FRAC    = {i_frac[31:31],1'b1,30'b0};
            3'd1:TRANS_FRAC    = {i_frac[31:30],1'b1,29'b0};
            3'd2:TRANS_FRAC    = {i_frac[31:29],1'b1,28'b0};
            3'd3:TRANS_FRAC    = {i_frac[31:28],1'b1,27'b0};
            3'd4:TRANS_FRAC    = {i_frac[31:27],1'b1,26'b0};
            3'd5:TRANS_FRAC    = {i_frac[31:26],1'b1,25'b0};
            3'd6:TRANS_FRAC    = {i_frac[31:25],1'b1,24'b0};
            default:TRANS_FRAC =  i_frac;
        endcase
    end


    assign o_Xi_FRAC         =   (COMPARE_DIST1[7]|X_0_125_FLAG) ? 32'h0000_0000 :           //
                                  COMPARE_DIST2[7] ? {1'b1,1'b1,30'b0}:
                                  TRANS_FRAC;
    
    assign o_X_APPRO_ZERO     = COMPARE_DIST1[7];

    assign o_SEL_L_OR_S       =  COMPARE_DIST1[7]|(dist_cal == 2'b10)|X_0_125_FLAG;

    assign o_X_ZERO_CAL_FLAG  = (i_X_ZERO_FLAG)||(COMPARE_DIST1[7]&i_sincos_proced);

    assign o_sincos_proced    = i_sincos_proced;
endmodule