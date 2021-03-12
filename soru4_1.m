clear all
clc
clf

%nümerik çözüm

%öncelikle fonksiyon ayrý bir dosya olarak kaydedilir
%function f = soru4(tn,yn);
%f = [yn(2); -4*yn(2)-3*yn(1)+tn];
%end

%daha sonra bu fonksiyon çaðýrýlýrak aþaðýdaki iþlemler yapýlýr:
xn_aralik = [-1,3];
yn_baslangic = [0;1];
[x,yn] = ode23('soru4',xn_aralik, yn_baslangic);

%sembolik çözüm

syms y t
eqn = 'D2y+4*Dy+3*y=t';
baslangic ='y(0)=1,Dy(0)=0';
y = dsolve(eqn,baslangic,'t');
yprime = diff(y);
y_doubleprime = diff(y,2);

t = linspace(-1,3);
Y = eval(vectorize(y));
Y_prime = eval(vectorize(yprime));
Y_doubleprime = eval(vectorize(y_doubleprime));

plot(t,Y,'k')
xlim([-1 3])
ylim([-3 3])
legend('y','Location','southeast')

figure
plot(t,Y_prime,'k',x,yn(:,1),'ro')
xlim([-1 3])
ylim([-3 3])
legend('yprime','ynumericprime','Location','southeast')

figure
plot(t,Y_doubleprime,'k',x,yn(:,2),'ro')
xlim([-1 3])
ylim([-3 3])
legend('ydoubleprime','ynumericdoubleprime','Location','southeast')
