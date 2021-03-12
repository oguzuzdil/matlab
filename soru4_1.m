% grafikte iki e�ri aras�nda kalan taral� alan� Matlab?de Simpson y�ntemini 
%kullanan n�merik integrasyon komutlar�n� kullanarak bulunuz ve buldu�unuz 
%sonucu el ile yapaca��n�z analitik ��z�mle k�yaslay�n�z.

%�ncelikle fonksiyon ayr� bir dosya olarak kaydedilir:
%function y = soru4(x)
%         y= x-x.^3;
%end

% y1=y2 =>  x^3=x  =>  x^3-x = 0  yani  x^3 +0x^2 -x +0 = 0
% denklemin katsay�lar�: [1 0 -1 0]

% �ki e�rinin kesi�ti�i noktay� bulal�m (1 ��kmas� gerekir)
a = max(roots([1 0 -1 0]))

% 0-1 aras�nda integrali alal�m
A = quad('soru4',0,1)



%2. yol:
a = max(roots([1 0 -1 0]))
F = @(x) x-x.^3
A2 = quad(F,0,1)

%3. yol:
a = max(roots([1 0 -1 0]))
A3 = quad('x-x.^3',0,1)