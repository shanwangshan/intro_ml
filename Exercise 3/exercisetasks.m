clear c;
num=10000;
[mu,sigma,p]=cifar_10_bayes_learn(tr_data,tr_labels);
for i=1:num
    f=cifar_10_features(te_data(i,:));
    c(i)=cifar_10_bayes_classify(f,mu,sigma,p);
end
acc=accuracy(c,te_labels(1:num))
    
  acc=accuracy(c,te_labels(1:num));
C=confusionmat(te_labels(1:num),uint8(c)');
figure;
imagesc(C);
colormap gray;
%plot nonmixing
c1=1;
c2=7;
x=80:160;
figure;
subplot(3,1,1);plot(x,normpdf(x,mu(c1,1)),'r-',x,normpdf(x,mu(c2,1)),'r--');
subplot(3,1,2);plot(x,normpdf(x,mu(c1,2)),'g-',x,normpdf(x,mu(c2,2)),'g--');
subplot(3,1,3);plot(x,normpdf(x,mu(c1,3)),'b-',x,normpdf(x,mu(c2,3)),'b--');   
legend(label_names{c1},label_names{c2})
%plot mixing
c1=4;
c2=7;
figure;
subplot(3,1,1);plot(x,normpdf(x,mu(c1,1)),'r-',x,normpdf(x,mu(c2,1)),'r--');
subplot(3,1,2);plot(x,normpdf(x,mu(c1,2)),'g-',x,normpdf(x,mu(c2,2)),'g--');
subplot(3,1,3);plot(x,normpdf(x,mu(c1,3)),'b-',x,normpdf(x,mu(c2,3)),'b--');   
legend(label_names{c1},label_names{c2}) 