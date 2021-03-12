%Aþaðýda verilen birinci mertebeden diferansiyel denklemin y(0)=1 baþlangýç
%koþulu altýnda 0 ve 3 sýnýr deðrleri arasýndaki  sayýsal çözümünü ode
%komutu ile çizdiriniz.
% y' = dy/dt = g(t,y) = t^2-y



%Önce fonksiyon ayrý bir dosya olarak kaydedilir
%Ýki dosya da ayný klasörde olmalýdýr

%function y_p = dydt(t,y)  %y_p:y prime, 1.i türev
%     y_p = t.^2-y;
%end


clc, clear all, close all
[t,y]=ode23(@dydt,[0 3],1); % veya [t,y]=ode23('dydt',[0 3],1);   %baþlangýç koþulu 1
% t=0 için y=1
% t ve y vektör
plot(t,y,'r-')
xlabel ('t') 
ylabel('y') 
grid on
hold on
plot(t,dydt(t,y),'b--')

%mavi çizgi, kýrmýzýnýn türevi. Kesiþtikleri nokra t=1,2 için y'=0,72

[t,y]=ode23(@dydt,[0 3],2); %baþlangýç koþulu 2
plot(t,y,'g-')

[t,y]=ode23(@dydt,[0 3],10); %baþlangýç koþulu 10
plot(t,y,'k-')

%ode45 ile çözüm
[t,y]=ode45(@dydt,[0 3],1); %ode45, ode23'e göre daha hassastýr
plot(t,y,'g-')