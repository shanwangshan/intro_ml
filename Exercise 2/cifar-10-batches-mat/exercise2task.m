clear pred
for i=1:15
    
    [labels1,~]=cifar_10_1NN(te_data(i,:),tr_data,tr_labels);
    pred(i)=labels1;
    i
    
end
accu=cifar_10_evaluate(pred,te_labels(1:15))
%%
accuracy1=cifar_10_evaluate(te_labels,tr_labels(1:length(te_labels)))
randlabel=cifar_10_rand(te_data);
trlabelst=cifar_10_1NN(te_data,tr_data(1:20,:),tr_labels(1:20));
accuracy2=cifar_10_evaluate(trlabelst,te_labels)