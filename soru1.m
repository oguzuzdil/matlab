%Aþaðýdaki tabloda kanalda, h derinliðinde akan su görülmektedir. Bu kanal 
%için, bir Matlab fonksiyonu yazarak akýþ alanýný (A),ýslak çevreyi (P) ve 
%hidrolik yarýçapý (R) hesaplayýnýz. Fonksiyonunuzun girdi ve çýktý 
%parametrelerini uygun þekilde belirleyiniz. Fonksiyonu kullanarak bir örnek çözünüz.

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
