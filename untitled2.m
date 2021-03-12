% integral 2'den 8'e(1/(x^5+x^2+15x-6))dx integrali

%1)Tek değişkenli bir fonksiyon direkt olarak 'fonksiyon' yerine yazılır:
alan = quad('1./(x.^5+x.^2+15*x-6)',2,8)

%2)inline komutu ile:
F = inline('1./(x.^5+x.^2+15*x-6)');
alan = quad(F,2,8)

%3)fonksiyonu alt programda tanımlayarak:
%function y = altfonk(x)
%y = 1./(x.^5+x.^2+15*x-6);

alan = quad('altfonk',2,8)

%4)function handle ile:
F = @(x) 1./(x.^5+x.^2+15*x-6);
Q = quad(F,2,8)
