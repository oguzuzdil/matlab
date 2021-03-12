% f(x) = -3*x^3 -3*x^2 + 7*x + 6 fonksiyonunu x(-2:2) aral���nda
% �izdiriniz. Elde edilen grafikten e�rinin s�f�r ge�i� noktalar�n� tespit
% ederek fzero komutu yard�m� ile k�klerini bulunuz.

x = linspace(-2,2);
f8 = -3*x.^3 -3*x.^2 + 7*x + 6;
plot(x,f8) , grid

% Noktalar grafikten tespit edildikten sonra
x1 = fzero('-3*x.^3 -3*x.^2 + 7*x + 6',-2)
x2 = fzero('-3*x.^3 -3*x.^2 + 7*x + 6',-1.5)
x3 = fzero('-3*x.^3 -3*x.^2 + 7*x + 6',-1)


