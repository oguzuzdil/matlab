%�nce fonksiyonu bir dosyaya yazar�z (myfun.m):

function y = myfun(x) 
y = 1./(x.^3-2*x-5);

%Daha sonra bir function handle olan @myfun '� quad komutuna limitlerle (0,2) birlikte aktarabiliriz:

Q = quad(@myfun,0,2)     %veya
Q = quad('myfun',0,2)

%Fonksiyonu isimsiz fonksiyon olarak da tan�mlayabiliriz:

F = @(x)1./(x.^3-2*x-5);
Q = quad(F,0,2);

%Fonksiyonu inline fonksiyon olarak da tan�mlayabiliriz:

f1=inline('1./(x.^3-2*x-5)'); 
Q=quad(f1,0,2);
