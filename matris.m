%Girilen bir x deðeri ile A =[3 4 2; -1 3 6; 2 5 8] matrisinin yalnýzca
%ikinci satýrýný çarpýp B matrisine atayan bir program yazýnýz.

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
      