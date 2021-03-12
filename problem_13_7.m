% di(t)/dt = -15*i(t) + 2*cos(2*t) + t    %(lineer denklem,sabit katsayýlý=
% Yukarýda veriken sabit katsayýlý lineer diferansiyel denklemin çözümünü
% t=[0:3] saniye zaman aralýðýnda ve i(0)=0 ilk koþulu altýnda, ode45
% komutu yardýmý ile (i(t)) çizdiriniz.


%Öncelikle fonksiyon ayrý bir dosya olarak kaydedilir:
%function di_dt = cozode2(t,a)
%di_dt = -15*a + 2*cos(2*t) + t;    %matlab'te i karmaþýk sayý olduðu için
                                    %a kullanýlmýþ

[t,a] = ode45 ('cozode2', [0 3],0);  %veya [t,a] = ode45 (@cozode2, [0 3],0); 
plot(t,a, 'r');
title('dif. denklem cozumu');
xlabel('t')
ylabel('i=i(t)')
grid