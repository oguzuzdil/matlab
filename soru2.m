%2.	Verilen bir Am�n matrisinin sat�rlar�n�n toplam�n� ARm�1 (d��ey vekt�r) 
%ve s�tunlar�n�n toplam�n� da AN1�n (yatay vekt�r) isimli vekt�rlere atayan 
%bir fonksiyon yaz�n�z (m ve n her boyut olabilir). Bu fonksiyonu random bir 
%matris �reterek bir �rnekte kullan�n�z.

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
