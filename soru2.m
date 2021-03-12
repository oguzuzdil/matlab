%2.	Verilen bir Am×n matrisinin satýrlarýnýn toplamýný ARm×1 (düþey vektör) 
%ve sütunlarýnýn toplamýný da AN1×n (yatay vektör) isimli vektörlere atayan 
%bir fonksiyon yazýnýz (m ve n her boyut olabilir). Bu fonksiyonu random bir 
%matris üreterek bir örnekte kullanýnýz.

function [AR,AN]=soru2(A)
[m,n]=size(A);
AR=zeros(m,1);
AN=zeros(1,n);
for i=1:m
    for j=1:n
        AR(i,1)=AR(i,1)+A(i,j);
        AN(1,j)=AN(1,j)+A(i,j);
    end
end
