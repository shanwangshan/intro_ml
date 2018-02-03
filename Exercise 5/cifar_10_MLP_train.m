function net=cifar_10_MLP_train(trdata,trlabels)
len_tr_labels = length(trlabels);
Tr_Labels = zeros(len_tr_labels, 10);
for n = 1:len_tr_labels
    j = trlabels(n);
    Tr_Labels(n, j+1) = 1;
end
% Tr_Labels=ind2vec(trlabels');
Tr_Data = im2double(trdata);

% patternnet(hiddenSizes,trainFcn,performFcn)
net = patternnet([30 10]); 
net = train(net, Tr_Data', Tr_Labels');
view(net)
% y = net(x);
% perf = perform(net,t,y);
% classes = vec2ind(y);

end
