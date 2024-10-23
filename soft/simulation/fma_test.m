 clear;
 a = 2^-0+2^-31;
 x = 2^-1+2^-2;
 b = 2^-33;
 rsult_HOLD = FMA_SIM_2(31,31,a,b,x);
 rsult_CUT = FMA_SIM_1(31,31,a,b,x);
 ref = a*x+b;
 error1 = abs(rsult_CUT-ref);
 error2 = abs(rsult_HOLD-ref);
 slogan = error1 == error2;
 disp(slogan)