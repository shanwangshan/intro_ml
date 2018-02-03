
net=cifar_10_MLP_train(tr_data,tr_labels);
estlabel = cifar_10_MLP_test(te_data, net);
estlabel=uint8(estlabel);
% accuracy= accuracy(estlabel, te_labels)
acc=sum(estlabel'==te_labels)/length(estlabel);