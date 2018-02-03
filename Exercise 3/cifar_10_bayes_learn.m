function [mu,sigma,p]=cifar_10_bayes_learn(F,labels) 
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
mu=[];sigma=[];
for i=0:9
    p(i+1)=sum(labels==i)/length(labels); %the probability 
    index1=find(labels==i);
     FF=F([index1(:)],:);
     f=[];
     for j=1:size(FF,1)
         f(j,:)=cifar_10_features(FF(j,:));
     end
     
     mu(i+1,:)=mean(f,1);
     sigma(i+1,:)=std(f,1);
end

end

