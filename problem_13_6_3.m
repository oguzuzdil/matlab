
%Analitik çözüm (kesin çözüm)
clc, clear all, close all
[t,y]=ode23(@dydt,[0 3],1);  %baþlangýç koþulu 1
% t=0 için y=1
% t ve y vektör
plot(t,y,'r-')
xlabel ('t') 
ylabel('y') 
grid on
hold on

t

%Nümerik çözüm (yaklaþýk çözüm)

ff=2-2*t+t.^2 + exp(-5)   %1'den baþlatýlmalý, hata var?
plot(t,ff,'b')