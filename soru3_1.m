% verilen nonlineer denklem tak�m�n� Matlab ile n�merik olarak ��z�n�z. 

%�ncelikle fonksiyon ayr� bir dosya olarak kaydedilir:
%function F = soru3(x)
%F = [ (x(1)/(1 + (x(1)/3-1) * exp(-27*x(2))))-5 ;
%    (x(1)/(1 + (x(1)/3-1)*exp(-39*x(2))))-6]
%end


clc;clear all;
x0 = [10; 0];
options = optimset('Display','iter');
[x,fval] = fsolve('soru3',x0,options)
