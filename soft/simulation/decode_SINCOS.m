function [Num,D] = decode_SINCOS(x,boundlist)
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明
    %boundlist(1,:) == lowbound
    %boundlist(2,:) == upbound
    Lt_Lowbound = x>= boundlist(1,:);
    St_Upbound  = x< boundlist(2,:) ;
    Num      = find(Lt_Lowbound&St_Upbound);
    D        = (x-(boundlist(1,Num)+boundlist(2,Num))/2);
end