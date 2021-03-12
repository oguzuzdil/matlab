%n elemana sahip bir vektördeki sayýlarýn ortalamasýný ve karelerin
%toplamýnýn karekökünü bulan program yazýnýz.

function [ort, karekok] = islem(x)
n= length(x)
toplam=0;
ort= 0;
kare=0;
karekok=0;
for i=1:n
    toplam = toplam +i
    kare = kare +i^2
end
ort = toplam/2;
karekok = sqrt(kare);
disp('karesinin karekoku')
karekok
disp('ortalama')
ort 
end