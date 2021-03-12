% Ýsimsiz bir fonksiyon function handle kullanýlarak oluþturulabilir:
sqr = @(x) x.^2
sqr(5)
sqr(1:5)

sqr2 = @(x) (x-2).^2-5
fzero(sqr2,-3,3)
ezplot(sqr2,[-3,3]); grid on


