clear all
close all
X = [3 9 27]; %baðýmlý deðiþkenler
Y = [10 8 6];
Z = [4 4 4];
t = [1 2 3]; %baðýmsýz deðiþken
figure
hold on  %tüm vektörlerin ayný figür üzerine çizilmesini saðlar

plot(t, X, 'b', t, Y, 'r', t, Z, 'g')
title('zamana gore mesafe degisimi')  %baþlk
xlabel('Zaman(s)') %z eksen baþlýðý
ylabel('Mesafe(m)') %y eksen baþlýð
legend('Arac 1', 'Arac 2', 'Arac 3')
legend('Location', 'NorthWest') %Lejantý kuzey doðu köþeye taþý 