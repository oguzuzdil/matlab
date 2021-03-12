%Bir cismin h�z de�i�imi v(t) = 3t^2 + 4t + 6 m/s olarak verilmi�tir.
%Hareketinin t=3. saniyesindeki;
% a)�vmesini dv/dt form�l� ile hesaplay�n�z
% b)a=diff(v)./diff(t) komutu ile hesaplay�n�z

%a ��kk�:
% a=dv/dt = d(3*t^2+4*t+6)/dt = 6*t+4|(t=3 i�in) = 22m/sn^2

%b ��kk�:
t=0:0.1:3;  %de�i�ken, 0.1=>100 de�er (t'yi ayr�kla�t�r�yoruz)
v=3*t.^2+4*t+6;  %t�revi al�nacak fonksiyon
dt=diff(t); 
dv=diff(v); 
a=diff(v)./diff(t);  %t�m zaman aral��� boyunca ivme de�erleri bulunuyor
ivme_3saniye = a(end)
%(geri fark y�ntemi)

%ivme_3saniye = 21.7000
%Bulunan ivme de�eri, ger�ek ivme de�erine (22 m/sn^2) de�erine yak�nd�r.
%E�er programda t=0:0.01:3 kullan�l�rsa a=21,97 m/sn^2 elde edilir.
%t=0:0.0001:3 kullan�l�rsa a=21,9997 m/sn^2 elde edilir. Bu sonuca
%bak�larak diff komutu ile elde edilen t�rev de�erlerinin, de�i�lenin (t)
%art�� aral��� ile �ok yak�ndan alakal� oldu�u s�ylenebilir.

%merkezi fark y�ntemi ile t�rev almak istersek: diff komutu ile
%yapamay�z,for d�g�s� ile bulabiliriz

   