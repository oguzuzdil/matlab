%A�a��da verilen birinci mertebeden diferansiyel denklemin y(0)=1 ba�lang��
%ko�ulu alt�nda 0 ve 3 s�n�r de�rleri aras�ndaki  say�sal ��z�m�n� ode
%komutu ile �izdiriniz.
% y' = dy/dt = g(t,y) = t^2-y



%�nce fonksiyon ayr� bir dosya olarak kaydedilir
%�ki dosya da ayn� klas�rde olmal�d�r

%function y_p = dydt(t,y)  %y_p:y prime, 1.i t�rev
%     y_p = t.^2-y;
%end


clc, clear all, close all
[t,y]=ode23(@dydt,[0 3],1); % veya [t,y]=ode23('dydt',[0 3],1);   %ba�lang�� ko�ulu 1
% t=0 i�in y=1
% t ve y vekt�r
plot(t,y,'r-')
xlabel ('t') 
ylabel('y') 
grid on
hold on
plot(t,dydt(t,y),'b--')

%mavi �izgi, k�rm�z�n�n t�revi. Kesi�tikleri nokra t=1,2 i�in y'=0,72

[t,y]=ode23(@dydt,[0 3],2); %ba�lang�� ko�ulu 2
plot(t,y,'g-')

[t,y]=ode23(@dydt,[0 3],10); %ba�lang�� ko�ulu 10
plot(t,y,'k-')

%ode45 ile ��z�m
[t,y]=ode45(@dydt,[0 3],1); %ode45, ode23'e g�re daha hassast�r
plot(t,y,'g-')