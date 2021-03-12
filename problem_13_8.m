%y''' + 5*y'' -y = 4        % 3. dereceden bir denklem sistemi olduðu için 3 adet
                            % baþlangýç koþulu gereklidir


%Öncelikle fonksiyon ayrý bir dosya olarak kaydedilir

%function xprime = fonk2(t,x)
%     xprime = [x(2); x(3); -5*x(3)+x(1)+4];
%end

clc, clear all, close all
x_aralik = [0 2];
x0 = [-1 1 2];
[t,x]=ode45(@fonk2,x_aralik,x0);
plot(t,x(:,1),'r-*')    
xlabel ('t'), ylabel('x'), grid on
hold on
plot(t,x(:,2),'b-+')
plot(t,x(:,3),'k-*')
legend('x1','x2','x3','Location','southeast')


%analitik çözümde baþlangýç koþulu tanýmlanmasýna gerek yok, çünkü sembolik
%olarak çözüyor; fakat bu çözüm nümerik