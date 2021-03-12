% z = cos(2*x).*y.^3+1; fonksiyonu �izdirilmektedir

x = linspace(0,2,15);
y = linspace(-pi/3,pi/3,15);
[xx,yy] = meshgrid(x,y);  
zz = yuzey(xx,yy);   %y�zey adl� alt programa bak�ls�n
mesh(xx,yy,zz)   %mesh grafi�i �izdirir
xlabel('x')
ylabel('y')
zlabel('z')
%buraya kadar grafik �izdiriliyor

%yuzey.m adl� altprogram:
%function k = yuzey(x,y)   %yuzey.m, iki de�i�kenli bir fonksiyonu hesaplar
%k = cos(2*x).*y.^+1;

%yuzey.m adl� altprogram ilen verilen z=f(x,y) fonksiyonunun 0<=x<=2,
%-pi/3<=y<=pi/3 aral���ndaki integrali a�a��daki program sat�r� ile
%hesaplanabilir:
dblquad('yuzey',0,2,-pi/3,pi/3) %integrasyonu hesaplar


%Yukar�daki program, alt program kullanmadan a�a��daki gibi de yaz�labilir:
figure
x = linspace(0,2,15);
y = linspace(-pi/3,pi/3,15);
[X,Y] = meshgrid(x,y);   %meshgrid bir fonksiyondur, fonksiyon �a��r�l�yor
Z = cos(2*X).*Y.^3+1;
mesh(X,Y,Z)   %mesh = a�
xlabel('X')   %15x15=225 X de�eri var
ylabel('Y')   %15x15=225 Y de�eri var
zlabel('Z')   %15x15=225 Z de�eri var
%buraya kadar grafik �izimi

dblquad('cos(2*x).*y.^3+1',0,2,-pi/3,pi/3)

%analitik olarak:
fun = @(x,y) cos(2*x).*y.^3+1   %fonksiyon fuction handle kullanarak olu�turuluyor
dblquad(fun,0,2,-pi/3,pi/3)


