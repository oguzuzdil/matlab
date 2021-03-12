%Atmosferik ara�t�rmalarda kullan�lan Lorenz denklemini ��zelim. Denklemin 
%��z�m�  kaotik davran��lar i�in �rnek te�kil etmektedir.

% sigma = 10, b = 8/3, r = 28,            x(0) = -8, y(0) = 8,  z(0) = 27



%�ncelikle fonksiyon ayr� bir dosya olarak kaydedilir


%function xprime = lorenz(t,x);
%Lorenz denklemleri.
%sig=10;
%b=8/3;
%r=28;
%xprime=[-sig*x(1) + sig*x(2); -x(2) - x(1)*x(3); -b*x(3) + x(1)*x(2) - b*r];

% x0 tan�mlanmal�??? 

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
%comet(x(:,1),x(:,3))  % �izerken g�sterir

