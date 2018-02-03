clear c;
clear acc;
num=10000;
% acc=[];
% for k=2:5
    
% N=2^k;
 [mu,covs]=cifar_10_bayes_learn(tr_data,tr_labels);
%  [mu,covi]=cifar_10_bayes_learnwithextended(tr_data,tr_labels,N);
 for i=1:num
    f=cifar_10_features(te_data(i,:));
%      f=cifar_10_extended_features(te_data(i,:),N);
    
    c(i)=cifar_10_bayes_classify(f,mu,covs);
 end
acc=accuracy(c,te_labels);
% end
%  plot([4,8,16,32],acc)

 