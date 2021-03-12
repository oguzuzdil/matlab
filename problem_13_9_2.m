x0 = [-1 1 2];
[t x] = ode45('fonks' , [0 6] , x0)
plot(t,x(:,2))   % dx/dt deðiþimi çizdiriliyor
xlabel('t')
ylabel('x2')
grid on