%Sembolik çözüm

syms y x
eqn = 'D2y - Dy + 2*y = x';
inits = 'y(0)=1 , Dy(0)=0';
y = dsolve(eqn,inits,'x')
yprime = diff(y)
ydoubleprime = diff(y,2)
x = linspace(0,4);
Y = eval(vectorize(y));
YP = eval(vectorize(yprime));
YDP = eval(vectorize(ydoubleprime));
plot(x,Y,'b-')       %y grafigi
xlabel('x') , ylabel('y') , grid on
hold on
plot(x,YP,'r.-')     %y' grafigi
plot(x,YDP,'k--')    %y'' grafigi

