% y''(x) + 8y'(x) + 2y(x) = cos(x)
% y(0)=1, y?(0)=0



eqn2 = 'D2y + 8*Dy + 2*y = cos(x)';
inits2 = 'y(0)=1, Dy(0)=0';
y = dsolve(eqn2,inits2,'x')

%plot icin:
x = linspace(0,1,20);
z = eval(vectorize(y));
plot(x,z)
