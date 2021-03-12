clc, clear all, close all
[t,y]=ode23(@dydt,[0 3],1); % veya [t,y]=ode23('dydt',[0 3],1);   %baþlangýç koþulu 1
% t=0 için y=1
% t ve y vektör
plot(t,y,'r-')
xlabel ('t') 
ylabel('y') 
grid on
hold on
plot(t,dydt(t,y),'b--')
