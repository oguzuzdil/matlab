%A�a��da verilen denklem tak�m�n� katsay�lar matrisini olu�turarak Matlab ile ��z�n�z.

% x1 - x2 = 20 
%x2 - x3 = 30 
%x3 - x4 = 75 
%x4 - x5 = -49
%-x1 + x5 = -20


K = [1 -1 0 0 0 ; 0 1 -1 0 0 ; 0 0 1 -1 0; 0 0 0 1 -1 ; -1 0 0 0 1] % Katsay�lar Matrisi
S = [20 ; 30 ; 75 ; -49 ; -20]  % Sonu� Matrisi

X = K\S % Bilinmeyenler Matrisi Hesaplan�yor