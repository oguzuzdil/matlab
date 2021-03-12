clear all
close all
[x,y] = meshgrid([-2:.2:2]);  %2 boyutlu d�zlemi ve mesh i tan�mla
Z = x.*exp(-x.^2-y.^2);  %mesh �zerinde Z fonksiyonunu (3. boyut) tan�mla
figure
surf(x,y,Z)  %y�zey grafi�i
colorbar  %renk skalas�
