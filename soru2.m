clear all
clc
clf

% f(x) = g(x)
% 2*x^3+x^2-x+1 = 6-(x-2)^2
% 2*x^3+2*x^2-5*x-1= 0
% Bulunan denklemin katsayýlarý ile katsayýlar vektörü oluþturulur:

katsayilar=[2 2 -5 -1]; 
kok=roots(katsayilar);

x=-3:0.01:2;
Alan1 = quad('abs(2*x.^3+x.^2-x+1-(6-(x-2).^2))',kok(1,1),kok(3,1)) 
Alan2 = quad('abs((6-(x-2).^2)-(2*x.^3+x.^2-x+1))',kok(3,1),kok(2,1))
Alan = Alan1+Alan2;

f = 2*x.^3+x.^2-x+1;
plot(x,f, 'LineWidth',2)
g = 6-(x-2).^2;
hold on
plot(x,g, 'LineWidth',2)
grid on
legend('f(x)','g(x)','Location','southeast')

disp('Egriler Arasinda Kalan Toplam Alan')
disp(Alan)
disp('Egrilerin Kesisim Noktalari')
disp(kok)

