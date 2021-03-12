clear all
close all
X = [3 9 27]; %ba��ml� de�i�kenler
Y = [10 8 6];
Z = [4 4 4];
t = [1 2 3]; %ba��ms�z de�i�ken
figure
hold on  %t�m vekt�rlerin ayn� fig�r �zerine �izilmesini sa�lar

plot(t, X, 'b', t, Y, 'r', t, Z, 'g')
title('zamana gore mesafe degisimi')  %ba�lk
xlabel('Zaman(s)') %z eksen ba�l���
ylabel('Mesafe(m)') %y eksen ba�l��
legend('Arac 1', 'Arac 2', 'Arac 3')
legend('Location', 'NorthWest') %Lejant� kuzey do�u k��eye ta�� 