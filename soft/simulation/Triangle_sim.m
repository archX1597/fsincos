 function result = Triangle_sim(x,boundlist,Series_List,mode)
%TRIANGLE_SIM 此处显示有关此函数的摘要
%   此处显示详细说明
    %do C0:29bit C1:29bit D:32bit do :32bit FMA
    if(x>2^-3)
    if(x<=2^-19)
       if(mode == 1)
        result = width_cut(2*pi,39,1)*x;
       else
        result = 1;
       end
    else 
        [Num,D] = decode_SINCOS(x,boundlist);
    %FMA:do:ax+b;
        C3 = Series_List(Num,1);C2 = Series_List(Num,2);C1 = Series_List(Num,3);C0 = Series_List(Num,4);
    %FMA1:do:C2+D*C3;
        M1 = FMA_SIM_2(35,35,C3,C2,D);
    %FMA2:do:M1*D+C1;
        M2 = FMA_SIM_2(39,39,M1,C1,D);
        M3 = FMA_SIM_2(39,39,M2,C0,D);
        result = width_cut(M3,31,1);
    end
end

