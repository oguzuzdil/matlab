%A�a��da  verilen Taylor serisini kullanarak e^(-x^2) ifadesini hesaplayan 
%bir Matlab program� yaz�n�z. x de�eri kullan�c�dan istenmelidir. Programda 
%while d�ng�s� kullan�n�z, ve d�ng� 0.0001 tolerans de�erine kadar devam 
%etmelidir. Program hesaplamalardan sonra x ve   de�erlerini ekrana 
%yazd�rmal�d�r. En alta  e^(-1^2) 'yi hem Matlab ile hem de kendi 
%program�n�z ile hesaplay�p sonucunu long format�nda yaz�n�z.
% e^(-x^2) = 1 - x^2 + x^4/2! - x^6/3! + x^8/4!

x = input('x sayisini giriniz');
toplam=1; terim=1;
i=2;   %seri x^2 ile ba�lad��� i�in
while abs(terim)>0.0001
    terim = (-1)^(i/2)*x^i/factorial(i/2);
    toplam=toplam+terim;
    i=i+2;
end
format long
disp('terim sayisi: ')
disp(i/2)
disp('seri sonucu: ')
disp(toplam)
disp('MAtlab sonucu: ')
disp(exp(-(x^2)))

