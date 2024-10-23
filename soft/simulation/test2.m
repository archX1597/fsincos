clear;
seriese_task;
inputvector = (boundlist(1,:)+boundlist(2,:))./2;
ref_cos     = sin(2*pi*inputvector);
cos_sim     = Series_SIN_List(:,4)';
error = abs(cos_sim-ref_cos);
ulp   = floor(log2(abs(ref_cos)))-31;
error_ulp = error./(2.^ulp);
