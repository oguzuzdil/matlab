
%Analitik ��z�m (kesin ��z�m)
clc, clear all, close all
[t,y]=ode23(@dydt,[0 3],1);  %ba�lang�� ko�ulu 1
% t=0 i�in y=1
% t ve y vekt�r
plot(t,y,'r-')
xlabel ('t') 
ylabel('y') 
grid on
hold on

t

%N�merik ��z�m (yakla��k ��z�m)

ff=2-2*t+t.^2 + exp(-5)   %1'den ba�lat�lmal�, hata var?
plot(t,ff,'b')