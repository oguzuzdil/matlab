clc
clear all
close all
x_aralik = [0,0.9];
y0 = 1;
[x1,y1]=ode23('fonk1',x_aralik,y0);
plot(x1,y1,'r--')
[x2,y2]=ode45('fonk1',x_aralik,y0);   %ode45 analitik çözüme daha yakýndýr, daha hassas bir çözüm
hold on
plot(x2,y2,'g-')

%x1 ve x2 olarak ayarý isim verildiðinde deðerleri ayrý ayrý elde
%edebiliriz