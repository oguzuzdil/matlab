%Girilen bir x de�eri ile A =[3 4 2; -1 3 6; 2 5 8] matrisinin yaln�zca
%ikinci sat�r�n� �arp�p B matrisine atayan bir program yaz�n�z.

clear all
clc
A =[3 4 2; -1 3 6; 2 5 8];
x = input ('x degerini giriniz=');
for i=1:3
    for j=1:3
        if i==2
            B(i,j) = x * A(i,j);
        else
            B(i,j) = A(i,j);
        end
    end
end
A
B
      