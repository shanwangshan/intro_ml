function f=cifar_10_features(x)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
img_r =x(1:1024);
xrm=mean(img_r);
img_g = x(1025:2048);
xgm=mean(img_g);
img_b =x(2049:3072);
xbm=mean(img_b);
f=[xrm,xgm,xbm];
end

