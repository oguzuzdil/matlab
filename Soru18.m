clear all
clc
t=0:0.01*pi:12*pi;
[x, y] = kelebek(t);
plot(x,y,'b.') 
xlabel('x')
ylabel('y')
title('x-y grafigi')