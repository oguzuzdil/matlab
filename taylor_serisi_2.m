%Aþaðýda verilen Taylor serisini kullanarak log(1+x)?i (Doðal Logaritma=log) 
%hesaplayan bir Matlab programý yazýnýz. x deðeri kullanýcýdan istenmelidir. 
%Programdaki döngü 100. terime kadar devam etmelidir. Program hesaplamalardan 
%sonra x ve log(1+x) deðerlerini ?out.txt? dosyasýna ve ekrana yazdýrmalýdýr. 
%En alta log(1.5)?i (x=0.5) hem Matlab ile hem de kendi programýnýz ile 
%hesaplayýp sonucunu yazýnýz.
% log(1+x) = x - x^2/2 + x^3/3 - x^4/4 +...+ (-1)^n-1*x^n/n +...   -1<x<=1
clc
clear all
x = input('-1 ile +1 arasinda x sayisini giriniz');
toplam=0; terim=0;
for i=1:100
    terim = (-1)^(i+1)*x^i/i;
    toplam = toplam + terim;
end
dosya1 = fopen('out.txt','w+');
fprintf(dosya1, 'matlab      : %10.15f'  ,log(1+x));
fclose(dosya1);
type out.txt
