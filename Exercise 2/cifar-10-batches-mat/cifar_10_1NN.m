function [ label1,NN_IND ] = cifar_10_1NN(x,trdata,trlabels) 
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
for i=1:size(trdata,1)
    trdatasample=trdata(i,:);
    MSE=mean2((trdatasample-x).^2);
    if i==1
        MSE_NN=MSE;
        NN_IND=i;
    else if MSE<MSE_NN
            MSE_NN=MSE;
            NN_IND=i;
        end
    end
    label1=trlabels(NN_IND);
end
end

