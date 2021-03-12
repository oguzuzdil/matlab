x0 = [-1 1 2];
[t x] = ode45('cevap2' , [0 6] , x0)
plot(t,x(:,2))   % dx/dt değişimi çizdiriliyor
xlabel('t')
ylabel('x2')
grid on