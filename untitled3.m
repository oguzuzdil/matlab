% z = cos(2*x).*y.^3+1; fonksiyonu çizdirilmektedir

x = linspace(0,2,15);
y = linspace(-pi/3,pi/3,15);
[xx,yy] = meshgrid(x,y);  
zz = yuzey(xx,yy);   %yüzey adlý alt programa bakýlsýn
mesh(xx,yy,zz)   %mesh grafiði çizdirir
xlabel('x')
ylabel('y')
zlabel('z')
%buraya kadar grafik çizdiriliyor

%yuzey.m adlý altprogram:
%function k = yuzey(x,y)   %yuzey.m, iki deðiþkenli bir fonksiyonu hesaplar
%k = cos(2*x).*y.^+1;

%yuzey.m adlý altprogram ilen verilen z=f(x,y) fonksiyonunun 0<=x<=2,
%-pi/3<=y<=pi/3 aralýðýndaki integrali aþaðýdaki program satýrý ile
%hesaplanabilir:
dblquad('yuzey',0,2,-pi/3,pi/3) %integrasyonu hesaplar


%Yukarýdaki program, alt program kullanmadan aþaðýdaki gibi de yazýlabilir:
figure
x = linspace(0,2,15);
y = linspace(-pi/3,pi/3,15);
[X,Y] = meshgrid(x,y);   %meshgrid bir fonksiyondur, fonksiyon çaðýrýlýyor
Z = cos(2*X).*Y.^3+1;
mesh(X,Y,Z)   %mesh = að
xlabel('X')   %15x15=225 X deðeri var
ylabel('Y')   %15x15=225 Y deðeri var
zlabel('Z')   %15x15=225 Z deðeri var
%buraya kadar grafik çizimi

dblquad('cos(2*x).*y.^3+1',0,2,-pi/3,pi/3)

%analitik olarak:
fun = @(x,y) cos(2*x).*y.^3+1   %fonksiyon fuction handle kullanarak oluþturuluyor
dblquad(fun,0,2,-pi/3,pi/3)


