clear all
close all
x=0:.1:2*pi; %x vekt�r� 0-2*pi aras�nda, dx=0.1
subplot(2,2,1); %sin�s fonksiyonu
plot(x,sin(x));
title('SINUS')
subplot(2,2,2); %kosin�s fonksiyonu
plot(x,cos(x));
title('KOSINUS')
subplot(2,2,3) %�ssel fonksiyon
plot(x,exp(-x));
subplot(2,2,4); %x^3 fonksiyonu
plot(x, x.^3);
