%A�a��daki tabloda kanalda, h derinli�inde akan su g�r�lmektedir. Bu kanal 
%i�in, bir Matlab fonksiyonu yazarak ak�� alan�n� (A),�slak �evreyi (P) ve 
%hidrolik yar��ap� (R) hesaplay�n�z. Fonksiyonunuzun girdi ve ��kt� 
%parametrelerini uygun �ekilde belirleyiniz. Fonksiyonu kullanarak bir �rnek ��z�n�z.

function [A,P,R] = soru1(a,b,d,e,h)
if h<=d
    A=(h^2)*b/d;
    P=2*sqrt(h^2+(h*b/(2*d))^2);
    R=A/P;
elseif h>d && h<=(d+e)
    A=d*b/2+(h-d)*(2*a+b);
    P=2*(sqrt(d^2+(b/2)^2)+a+h-d);
    R=A/P;
elseif h>(d+e)
    error('su yuksekligi kanal yuksekligini gecti')
end
