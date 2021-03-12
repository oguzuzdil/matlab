%Önce fonksiyonu bir dosyaya yazarýz (myfun.m):

function y = myfun(x) 
y = 1./(x.^3-2*x-5);

%Daha sonra bir function handle olan @myfun 'ý quad komutuna limitlerle (0,2) birlikte aktarabiliriz:

Q = quad(@myfun,0,2)     %veya
Q = quad('myfun',0,2)

%Fonksiyonu isimsiz fonksiyon olarak da tanýmlayabiliriz:

F = @(x)1./(x.^3-2*x-5);
Q = quad(F,0,2);

%Fonksiyonu inline fonksiyon olarak da tanýmlayabiliriz:

f1=inline('1./(x.^3-2*x-5)'); 
Q=quad(f1,0,2);
