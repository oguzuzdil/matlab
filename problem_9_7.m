% f(x) = -3*x^3 -3*x^2 + 7*x + 6 fonksiyonunu x(-2:2) aralýðýnda
% çizdiriniz. Elde edilen grafikten eðrinin sýfýr geçiþ noktalarýný tespit
% ederek fzero komutu yardýmý ile köklerini bulunuz.

x = linspace(-2,2);
f8 = -3*x.^3 -3*x.^2 + 7*x + 6;
plot(x,f8) , grid

% Noktalar grafikten tespit edildikten sonra
x1 = fzero('-3*x.^3 -3*x.^2 + 7*x + 6',-2)
x2 = fzero('-3*x.^3 -3*x.^2 + 7*x + 6',-1.5)
x3 = fzero('-3*x.^3 -3*x.^2 + 7*x + 6',-1)


