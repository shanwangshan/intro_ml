function estlabel=cifar_10_MLP_test(x,net)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
 x = im2double(x);
    Te_Labels = net(x');
% perf = perform(net,t,y);
% estlabel = vec2ind(y);
estlabel = vec2ind(Te_Labels) - 1;
end

