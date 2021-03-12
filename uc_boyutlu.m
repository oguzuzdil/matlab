clear all
close all
[x,y] = meshgrid([-2:.2:2]);  %2 boyutlu düzlemi ve mesh i tanýmla
Z = x.*exp(-x.^2-y.^2);  %mesh üzerinde Z fonksiyonunu (3. boyut) tanýmla
figure
surf(x,y,Z)  %yüzey grafiði
colorbar  %renk skalasý
