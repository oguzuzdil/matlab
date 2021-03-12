clc, clear all, close all
x_aralik = [0 2];
x0 = [-1 1 2];
[t,x]=ode45(@fonk2,x_aralik,x0);
%plot(t,x(:,1),'r-*')    
%xlabel ('t'), ylabel('x'), grid on
%hold on
%plot(t,x(:,2),'b-+')
%plot(t,x(:,3),'k-*')
%legend('x1','x2','x3',4)

figure
plot(t,x)  %3 sütun da ayrý ayrý çizdiriliyor

y3 = -5*x(:,3) + x(:,1) + 4     %y''' =-5*x(3)
