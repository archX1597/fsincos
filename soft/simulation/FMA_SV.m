function result = FMA_SV(input_WIDTH,35,a,b,x)
%do fout = a*x+b
%   此处显示详细说明
    a_b_x= [a,b,x];
    a_b_x= width_cut(a_b_x,input_WIDTH,0);
    a  = a_b_x(1);
    b  = a_b_x(2);
    x  = a_b_x(3);
    if(abs(a*x)>=abs(b))
        mid_exp = floor(log2(abs(a*x)));
        b_exp   = floor(log2(abs(b)));
        diff    = mid_exp-b_exp;
        TARGET_WIDTH = 35- diff;
        if(TARGET_WIDTH<0)
            result  = width_cut(a*x,35,0);
        else
            b       = width_cut(b,TARGET_WIDTH,0);
            result  = width_cut(a*x,35,0)+b;
        end
    end
    if(abs(a*x)<abs(b))
        mid_exp = floor(log2(abs(b)));
        ax_exp  = floor(log2(abs(a*x)));
        diff    = mid_exp-ax_exp;
        TARGET_WIDTH = 35- diff;
        if(TARGET_WIDTH<0)
            result  = width_cut(b,35,0);
        else
            ax      = width_cut(a*x,TARGET_WIDTH,0);
            result  = width_cut(b,35,0)+ax;
        end
    end
    result = width_cut(result,35,0);
end