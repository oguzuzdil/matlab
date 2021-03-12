% di(t)/dt = -15*i(t) + 2*cos(2*t) + t    %(lineer denklem,sabit katsay�l�=
% Yukar�da veriken sabit katsay�l� lineer diferansiyel denklemin ��z�m�n�
% t=[0:3] saniye zaman aral���nda ve i(0)=0 ilk ko�ulu alt�nda, ode45
% komutu yard�m� ile (i(t)) �izdiriniz.


%�ncelikle fonksiyon ayr� bir dosya olarak kaydedilir:
%function di_dt = cozode2(t,a)
%di_dt = -15*a + 2*cos(2*t) + t;    %matlab'te i karma��k say� oldu�u i�in
                                    %a kullan�lm��

[t,a] = ode45 ('cozode2', [0 3],0);  %veya [t,a] = ode45 (@cozode2, [0 3],0); 
plot(t,a, 'r');
title('dif. denklem cozumu');
xlabel('t')
ylabel('i=i(t)')
grid