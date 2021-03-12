%Bir cisim t=0 an�nda yerden h0=45m kadar y�kseklikten v0= 40 m/sn lik ilk
%h�z ile yatay olarak f�rlat�lmaktad�r. Havan�n cisme g�sterdi�i diren�
%ihmal edilmektedir.Cisim t=0 an�ndan d��t��� ana kadar olan zaman
%s�resince, cismin yerden y�ksekli�inin (h) zamana (t) g�re de�i�imini
%�iziniz (g=10m/s^2)
%h(t)=0=h0-0.5*g*t^2 => 45=0.5*10*t^2 => tu�u�= 3sn
%h(t)=h0-0.5*g*t^2 => h(t)=45-0.5*10*t^2

g=10; h0=45  %cismin yerden y�kseli�i (m)
%Zaman hesab�
tu=sqrt(h0/(0.5*g));  %yere d��me s�resi
%100 elemanl� zaman vekt�r� hesab�
t=linspace(0,tu,100);
h=h0 - g/2*t.^2;  %cismin yerden y�ksekli�i
plot(t,h,'k:');  %h(t) nin �izimi
title('dusey atis'),
xlabel('zaman(s)'),
ylabel('yukseklik(m)'), grid
