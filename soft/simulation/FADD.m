function result = FADD(opA,b,output_WIDTH)
%FADD 此处显示有关此函数的摘要
%   此处显示详细说明
    if(abs(opA)>=abs(b))
        mid_exp = floor(log2(abs(opA)));
        b_exp   = floor(log2(abs(b)));
        diff    = mid_exp-b_exp;
        TARGET_WIDTH = output_WIDTH- diff;
        if(TARGET_WIDTH<=0)
            result  = width_cut(opA,output_WIDTH,0);
        else
            b       = width_cut(b,output_WIDTH-diff,0);
            result  = width_cut(opA,output_WIDTH,0)+b;
        end
    end
    if(abs(opA)<abs(b))
        mid_exp = floor(log2(abs(b)));
        opA_exp = floor(log2(abs(opA)));
        diff    = mid_exp-opA_exp;
        TARGET_WIDTH = output_WIDTH - diff;
        if(TARGET_WIDTH<=0)
            result  = width_cut(b,output_WIDTH,0);
        else
            opA     = width_cut(b,output_WIDTH-diff,0);
            result  = width_cut(b,output_WIDTH,0)+opA;
        end
    end
end

