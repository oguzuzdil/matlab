% y(x) = x^3-3*x^2+5*x-exp(-x^2) = 0
%do�rusal olmayan y(x) e�risinin x0=1 civar�ndaki k�k�n� bulunuz.
% problem ��z�m�nde �ncelikle verilen y(x) fonksiyonu 'fsecant.m' adl� alt
% programa kaydedilir
x = fzero('fsecant',1)    %fsecant bir fonksiyondur, �nceden tan�mlanmal�