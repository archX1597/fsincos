clear;
x  = 2^-1;
PI = width_cut(2*pi,39,1);
REF_SIN = cos(2*pi*x);
ULP = 2.^(floor(log2(REF_SIN))-31);
EXP_SIN = 1;
ERROR   = abs(REF_SIN-EXP_SIN);
ERROR_ULP = ERROR./ULP
max(ERROR_ULP)