%A�a��daki 2. derece adi diferansiyel denklemi ��zelim ve sonu�lar� �izdirelim:
% y"(x) + 8*y'(x) + 2*y(x) = cos(x)  % en b�y�k olan yaln�z b�rak�l�r!!!
% y(0)=1, y'(0)=0     %ba�lang�� ko�ullar�


% y1'(x) = y2(x)
% y2'(x) = -8*y2(x) - 2*y1(x) + cos(x)



%�ncelikle fonksiyon ayr� bir dosya olarak kaydedilir

%function yprime = secondode(x,y);
%yprime = [y(2); -8*y(2)-2*y(1)+cos(x)];
%end

clear all
clc
xspan = [0, 0.5];
y0 = [1; 0];
[x,y]=ode23('secondode',xspan,y0);
[x,y]

%grafikte hata var?
plot(x,y(:,1), 'r-*')
xlabel('x')
ylabel('y'), grid on
hold on
plot(x,y(:,2), 'b-+')
legend('y1','y2','Location','southeast')
