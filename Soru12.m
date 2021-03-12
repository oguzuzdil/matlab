%Öðrencinin vize ödev ve final notunu okuyup baþarý notunu bulan ve bunu 
%verilen aralýklara uygun olarak harf notuna dönüþtüren bir program yazýnýz.
%(baþarý notu : %20 odev, %30 vize %50 final)
%00 ?50 FF ; 50 ?60 DD ; 60 ?70 DC ; 70 ?75 CC ; 75 ?80 CB
%80 ?85 BB ; 85 ?90 BA ; 90 ?100 AA
clear all
clc
x = input ('Odev notunu giriniz')
y = input ('Vize notunu giriniz')
z = input ('Final notunu giriniz')
a = 0.2*x;
b = 0.3*y;
c = 0.5*z;
n = a + b + c;
disp(['Basarý notu=' , num2str(n)]) %veya disp('Basarý notu='), disp(n)
if (n >= 0 & n<50)
    disp('Harf notu=FF')
elseif (n >= 50 & n<60)
    disp('Harf notu=DD')
elseif (n >= 60 & n<70)
    disp('Harf notu=DC')
elseif (n >= 70 & n<75)
    disp('Harf notu=CC')
elseif (n >= 75 & n<80)
    disp('Harf notu=CB')
elseif (n >= 80 & n<85)
    disp('Harf notu=BB')
elseif (n >= 85 & n<90)
    disp('Harf notu=BA')
else
    disp('Harf notu=AA')
end