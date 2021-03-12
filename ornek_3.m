%Atmosferik araþtýrmalarda kullanýlan Lorenz denklemini çözelim. Denklemin 
%çözümü  kaotik davranýþlar için örnek teþkil etmektedir.

% sigma = 10, b = 8/3, r = 28,            x(0) = -8, y(0) = 8,  z(0) = 27



%Öncelikle fonksiyon ayrý bir dosya olarak kaydedilir


%function xprime = lorenz(t,x);
%Lorenz denklemleri.
%sig=10;
%b=8/3;
%r=28;
%xprime=[-sig*x(1) + sig*x(2); -x(2) - x(1)*x(3); -b*x(3) + x(1)*x(2) - b*r];

% x0 tanýmlanmalý??? 

clear all
clc

tspan=[0,50];
[t,x]=ode45('lorenz',tspan,x0);
plot(x(:,1),x(:,3))


%figure
%plot(x(:,2),x(:,3))

%figure
%plot(x(:,1),x(:,2))

%figure
%comet(x(:,1),x(:,3))  % çizerken gösterir

