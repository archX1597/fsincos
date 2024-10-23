function [COF_SIGN,COF_EXP,COF_FRAC] = COF_TRANSFER(input_VECTOR,FRAC_WIDTH,EXP_WIDTH)
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明
q = quantizer("double");
COF_BIN = num2bin(q,input_VECTOR);
COF_SIGN    = COF_BIN(1:end,1);
COF_EXP     = COF_BIN(1:end,2:12);
COF_EXP_DEC = bin2dec(COF_EXP)-1023;
COF_EXP_DEC = [127;COF_EXP_DEC];
COF_EXP_BIN_8bit = dec2bin(COF_EXP_DEC);
COF_EXP_BIN = COF_EXP_BIN_8bit(2:end,:);
COF_EXP     = COF_EXP_BIN(:,end-EXP_WIDTH+1:end);
COF_FRAC    = COF_BIN(1:end,13:13+FRAC_WIDTH-1);
end