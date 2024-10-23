clear;
seriese_task;
Series_SIN_List(:,1)= width_cut(Series_SIN_List(:,1),35,0);
Series_SIN_List(:,2)= width_cut(Series_SIN_List(:,2),35,0);
Series_SIN_List(:,3)= width_cut(Series_SIN_List(:,3),39,0);
Series_SIN_List(:,4)= width_cut(Series_SIN_List(:,4),39,0);
SIN_VECTOR= zeros(1,2*1e6);
x = 2^-11+(2^-9-2^-11)*rand(1,2*1e6);
x = sort(x);
x = width_cut(x,31,1);
parfor i=1:2*1e6
    SIN_APPRO = Triangle_sim(x(i),boundlist,Series_SIN_List,1);
    SIN_VECTOR(i) = SIN_APPRO;
end
REF_SIN = sin(2*pi*x);
ULP_SIN = 2.^(floor(log2(REF_SIN))-31);
ERROR_SIN = abs(SIN_VECTOR - REF_SIN);
ERROR_ULP_SIN= ERROR_SIN./ULP_SIN;
SIN_ERROR=max(ERROR_ULP_SIN);
%subplot(3,1,1)
scatter(x,ERROR_ULP_SIN,0.6);
%%%COS
% clear;
% seriese_task;
% Series_COS_List(:,1)= width_cut(Series_COS_List(:,1),35,0);
% Series_COS_List(:,2)= width_cut(Series_COS_List(:,2),35,0);
% Series_COS_List(:,3)= width_cut(Series_COS_List(:,3),39,0);
% Series_COS_List(:,4)= width_cut(Series_COS_List(:,4),39,0);
% COS_VECTOR= zeros(1,2*1e6);
% x = 2^-11+(2^-9-2^-11)*rand(1,2*1e6);
% x = sort(x);
% x = width_cut(x,31,1);
% parfor i=1:2*1e6
%     COS_APPRO = Triangle_sim(x(i),boundlist,Series_COS_List,0);
%     COS_VECTOR(i) = COS_APPRO;
% end
% REF_COS = cos(2*pi*x);
% ULP_COS = 2.^(floor(log2(REF_COS))-31);
% ERROR_COS = abs(COS_VECTOR - REF_COS);
% ERROR_ULP_COS= ERROR_COS./ULP_COS;
% COS_ERROR=max(ERROR_ULP_COS);
% %subplot(3,1,1)
% scatter(x,ERROR_ULP_COS,0.6);
% %subplot(3,1,2)
% %plot(REF_COS)
% %subplot(3,1,3)
% hold on;
% %plot(log2(ERROR_COS));