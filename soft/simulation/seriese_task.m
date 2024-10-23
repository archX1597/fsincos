%构造边界数组
SEG1_LowBound = [2.^(-19:1:-12)];
SEG1_UpBound  = [2.^(-18:1:-11)];
% SEG2_LowBound = 2^-11:2^-11:2^-9-2^-11;
% SEG2_UpBound  = 2^-11+2^-11:2^-11:2^-9;
SEG2_LowBound = 2.^(-11:1:-10)
SEG2_UpBound  = 2.^(-10:1:-9)
SEG3_LowBound = 2^-9:2^-9:2^-5-2^-9;
SEG3_UpBound  = 2^-9+2^-9:2^-9:2^-5;
SEG4_LowBound = 2^-5:2^-9:2^-3-2^-9;
SEG4_UpBound  = 2^-5+2^-9:2^-9:2^-3;
LowBound=[SEG1_LowBound,SEG2_LowBound,SEG3_LowBound,SEG4_LowBound];
UpBound =[SEG1_UpBound,SEG2_UpBound,SEG3_UpBound,SEG4_UpBound];
boundlist = [LowBound;UpBound];
Series_SIN_List = [];
Series_COS_List = [];
for k = boundlist
    f_SIN = chebyshev_pro(k(1),k(2),@sin);
    f_COS = chebyshev_pro(k(1),k(2),@cos);
    Series_SIN_List = [Series_SIN_List;f_SIN.expr_d];
    Series_COS_List = [Series_COS_List;f_COS.expr_d];
end

SIN_ABS_Series = abs(Series_SIN_List);
COS_ABS_Series = abs(Series_COS_List);
SIN_BOUND_OUTPUT  = sin(2*pi*LowBound);
COS_BOUND_OUTPUT  = cos(2*pi*LowBound);
SIN_FACTOR_COF    = SIN_ABS_Series./SIN_BOUND_OUTPUT';
SIN_FACTOR_EXP    = log2(SIN_FACTOR_COF);
SIN_MAX_WIDTH_EXTEND  = ceil(max(SIN_FACTOR_EXP));
COS_FACTOR_COF    = COS_ABS_Series./COS_BOUND_OUTPUT';
COS_FACTOR_EXP    = log2(COS_FACTOR_COF);
COS_MAX_WIDTH_EXTEND  = ceil(max(COS_FACTOR_EXP));

%系数量化

Series_SIN_List(:,1)= width_cut(Series_SIN_List(:,1),35,0);
Series_SIN_List(:,2)= width_cut(Series_SIN_List(:,2),35,0);
Series_SIN_List(:,3)= width_cut(Series_SIN_List(:,3),39,0);
Series_SIN_List(:,4)= width_cut(Series_SIN_List(:,4),39,0);

Series_COS_List(:,1)= width_cut(Series_COS_List(:,1),35,0);
Series_COS_List(:,2)= width_cut(Series_COS_List(:,2),35,0);
Series_COS_List(:,3)= width_cut(Series_COS_List(:,3),39,0);
Series_COS_List(:,4)= width_cut(Series_COS_List(:,4),39,0);
