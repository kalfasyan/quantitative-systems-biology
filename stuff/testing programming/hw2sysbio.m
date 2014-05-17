%% stuff
inits='x(0)=1,y(0)=0';
t=linspace(0,5);
[x,y]=dsolve('Dx=productionX(0.5,1)-x','Dy=productionX(0.8,1)-y',inits)
xx=eval(vectorize(x));
yy=eval(vectorize(y));


plot(t,xx,t,yy)
xlabel('time')
ylabel('Production of X,Y')
title('Steady states')
legend('X','Y')