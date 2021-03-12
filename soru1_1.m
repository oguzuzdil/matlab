%�ncelikle fonksiyon ayr� bir dosya olarak kaydedilir.

%function F = soru1(x)
%F(1) = 3*x(1) -cos(x(2)*x(3)) -0.5;
%F(2) = x(1)^2 -81*(x(2)+0.1)^2 + sin(x(3)) +1.06;
%F(3) = exp(-(x(1)*x(2))) + 20*x(3) + (10*pi-3)/3;
%end

%Kaydedilen fonksiyon �a��r�larak a�a��daki �ekilde denklem tak�m�n�n ��z�m� yap�l�r:

clc
clear all
format long

x0 = [0,0,0];
x = fsolve(@soru1,x0)