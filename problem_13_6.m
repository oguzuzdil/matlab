clc, clear all, close all
[t,y]=ode23(@dydt,[0 3],1); % veya [t,y]=ode23('dydt',[0 3],1);   %ba�lang�� ko�ulu 1
% t=0 i�in y=1
% t ve y vekt�r
plot(t,y,'r-')
xlabel ('t') 
ylabel('y') 
grid on
hold on
plot(t,dydt(t,y),'b--')
