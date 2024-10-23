function [output_vector] = width_cut(input_vector,FRAC_WIDTH,ROUND_EVEN)
%WIDTH_CUT 此处显示有关此函数的摘要
%   此处显示详细说明
    EXP_VECTOR = floor(log2(abs(input_vector)));
    FACTOR     = 2.^(FRAC_WIDTH);
    FRAC_ALL_WIDTH  = input_vector./(2.^(EXP_VECTOR));
    if(ROUND_EVEN)
        RESULT_TO_WIDTH = round(FRAC_ALL_WIDTH.*FACTOR,TieBreaker="even");
         % RESULT_TO_WIDTH = convergent(FRAC_ALL_WIDTH.*FACTOR);
    else
        RESULT_TO_WIDTH = fix(FRAC_ALL_WIDTH.*FACTOR);
    end
    output_vector   = (RESULT_TO_WIDTH./FACTOR).*2.^(EXP_VECTOR);
end

