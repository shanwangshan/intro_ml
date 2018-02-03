figure;
axis([0 5 0 5]);
N=5;
[X,Y] = ginput(N);
plot(X,Y,'rO')
[a,b]=linfit(X,Y);
hold on 
Y=a*X+b;
plot(X,Y)
