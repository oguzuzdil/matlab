%Aþaðýdaki 1. dereceden adi diferansiyel denklemi nümerik olarak ode23 ve 
%ode45 ile çözüp karþýlaþtýralým
% y'(x) = x*y^2 + y      %y^2 olduðu için lineer diferansiyel denklem deðil

%öncelikle fonksiyon ayrý bir dosya olarak kaydedilir
%function yprime = fonk1(x,y)
%     yprime = x*y^2 + y;
%end


clc
clear all
close all
x_aralik = [0,0.9];
y0 = 1;
[x,y]=ode23('fonk1',x_aralik,y0);
plot(x,y,'r--')
[x,y]=ode45('fonk1',x_aralik,y0);
hold on
plot(x,y,'g-')