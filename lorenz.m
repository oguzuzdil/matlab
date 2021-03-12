
function xprime = lorenz(t,x);
%Lorenz denklemleri.
sig=10;
b=8/3;
r=28;

xprime=[-sig*x(1) + sig*x(2); -x(2) - x(1)*x(3); -b*x(3) + x(1)*x(2) - b*r];
