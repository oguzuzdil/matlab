
[t,i] = ode45 ('cozode2', [0 5],0);  %veya [t,a] = ode45 (@cozode2, [0 3],0); 
plot(t,i, 'r');

hold on
grid
plot(t,cozode2(t,i),'b')
grid on