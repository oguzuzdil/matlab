%A�a��da verilen seri a��l�m�yla sin(x) in de�erini bulan bir .m dosyas� 
%(fonksiyon) yaz�n. Programda hata tolerans�n� siz belirleyin ve d�ng�y� bu 
%toleranstan daha hassas sonu� al�ncaya kadar devam ettirin. Buldu�unuz 
%sonucu Matlab fonksiyonu olan sin(x) ile kar��la�t�r�n. Ayr�ca, hesaplama 
%s�relerini de (tic-toc) kar��la�t�r�n.
% sinx = x - x^3/3! + x^5/5! - x^7/7! +...

function [toplam] = sinus_fonk(x)
toplam=0; terim=1;
i=1;
while abs(terim)>0.0001
 
    terim = (-1)^(i+1) * x^(2*i+1)/factorial(2*i-1);
    toplam = toplam + terim;
    i=i+1;
end
end


