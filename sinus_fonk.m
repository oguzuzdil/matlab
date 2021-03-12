%Aþaðýda verilen seri açýlýmýyla sin(x) in deðerini bulan bir .m dosyasý 
%(fonksiyon) yazýn. Programda hata toleransýný siz belirleyin ve döngüyü bu 
%toleranstan daha hassas sonuç alýncaya kadar devam ettirin. Bulduðunuz 
%sonucu Matlab fonksiyonu olan sin(x) ile karþýlaþtýrýn. Ayrýca, hesaplama 
%sürelerini de (tic-toc) karþýlaþtýrýn.
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


