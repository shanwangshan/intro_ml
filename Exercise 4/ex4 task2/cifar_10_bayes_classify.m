function c=cifar_10_bayes_classify(f,mu,covs)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

for i=1:10
    %PC(i)=normpdf(f(1),mu(i,1),sigma(i,1))*normpdf(f(2),mu(i,2),sigma(i,2))...
     %   *normpdf(f(3),mu(i,3),sigma(i,3))*p(i);
    
     PC(i)=mvnpdf(f,mu(i,:),covs(i).cov);
end
 [~,c]=max(PC);
 c=c-1;

end

