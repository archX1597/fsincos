module ADDR_DECODE(
    // @SuppressProblem -type partially_unread_data -count 1 -length 1
    input        [31 :0]   i_TRANS_FRAC,
    input        [3  :0]   i_COMPARE_DIST1_LOW,
    input        [2  :0]   i_COMPARE_DIST2_LOW, 
    input                  i_SEL_L_or_S,

    input         i_X_0_125_FLAG,i_X_APPRO_ZERO,i_sincos_proced,

    output       [6  :0]   o_ADDR_L_7B  ,
    output       [4  :0]   o_ADDR_S_5B  ,
    output                 o_SEL_L_or_S  ,
    output reg             o_COF_SIGN_REV_FLAG
);
    wire          ADDR_L_HIGH;
    reg  [5 :0]   ADDR_L_Low;
    reg  [3 :0]   ADDR_S_Low;          
	
	
    assign o_SEL_L_or_S = i_SEL_L_or_S;
    //DECODE LOW_o_ADDR
    always@(*) begin
        case(i_COMPARE_DIST1_LOW)
            4'd0:{ADDR_S_Low,o_COF_SIGN_REV_FLAG} = {4'd0,1'b1&i_sincos_proced&~i_SEL_L_or_S};
            4'd1:{ADDR_S_Low,o_COF_SIGN_REV_FLAG} = {4'd1,1'b1&i_sincos_proced&~i_SEL_L_or_S};
            4'd2:{ADDR_S_Low,o_COF_SIGN_REV_FLAG} = {4'd2,1'b1&i_sincos_proced&~i_SEL_L_or_S};
            4'd3:{ADDR_S_Low,o_COF_SIGN_REV_FLAG} = {4'd3,1'b1&i_sincos_proced&~i_SEL_L_or_S};
            4'd4:{ADDR_S_Low,o_COF_SIGN_REV_FLAG} = {4'd4,1'b0&i_sincos_proced&~i_SEL_L_or_S};
            4'd5:{ADDR_S_Low,o_COF_SIGN_REV_FLAG} = {4'd5,1'b0&i_sincos_proced&~i_SEL_L_or_S};
            4'd6:{ADDR_S_Low,o_COF_SIGN_REV_FLAG} = {4'd6,1'b0&i_sincos_proced&~i_SEL_L_or_S};
            4'd7:{ADDR_S_Low,o_COF_SIGN_REV_FLAG} = {4'd7,1'b0&i_sincos_proced&~i_SEL_L_or_S};
            4'd8:{ADDR_S_Low,o_COF_SIGN_REV_FLAG} = {4'd8,1'b0&i_sincos_proced&~i_SEL_L_or_S};
            4'd9:{ADDR_S_Low,o_COF_SIGN_REV_FLAG} = {4'd9,1'b0&i_sincos_proced&~i_SEL_L_or_S};
            default:{ADDR_S_Low,o_COF_SIGN_REV_FLAG} = 5'b00000;
        endcase
    end
    
    
    

    always@(*) begin
        case({i_COMPARE_DIST2_LOW,i_X_0_125_FLAG|i_X_APPRO_ZERO})
            {3'd0,1'b0}:ADDR_L_Low =  6'b000001;
            {3'd1,1'b0}:ADDR_L_Low =  6'b000010|{5'b0,i_TRANS_FRAC[30:30]};
            {3'd2,1'b0}:ADDR_L_Low =  6'b000100|{4'b0,i_TRANS_FRAC[30:29]};
            {3'd3,1'b0}:ADDR_L_Low =  6'b001000|{3'b0,i_TRANS_FRAC[30:28]};
            {3'd4,1'b0}:ADDR_L_Low =  6'b010000|{2'b0,i_TRANS_FRAC[30:27]};
            {3'd5,1'b0}:ADDR_L_Low =  6'b100000|{1'b0,i_TRANS_FRAC[30:26]};
            {3'd6,1'b0}:ADDR_L_Low =  6'b000000;
            default:ADDR_L_Low = 6'b000000;
        endcase
    end

    assign ADDR_L_HIGH  =  i_X_0_125_FLAG|(i_sincos_proced);

    assign o_ADDR_L_7B  = {ADDR_L_HIGH,ADDR_L_Low};
    assign o_ADDR_S_5B  = {i_sincos_proced,ADDR_S_Low};
endmodule
