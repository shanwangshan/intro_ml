function [ y ] =cifar_10_rand(x)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
n=length(x);
y=randi([0,9],n,1);%create integer from 0 to 9 by n*1
end

