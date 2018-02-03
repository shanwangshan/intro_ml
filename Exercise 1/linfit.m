function [a,b]=linfit(X,Y)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
   N=length(X);
   b=(sum(Y)*sum(X.^2)-sum(X.*Y)*sum(X))/(N*sum(X.^2)-(sum(X)^2));
   a=(sum(X.*Y)-b*sum(X))/(sum(X.^2));
end

