function [accuracyrate ] = cifar_10_evaluate( pred,gt)
n=length(gt);
a=sum(pred'==gt);
accuracyrate=a/n;
end