%Aþaðýda  verilen Taylor serisini kullanarak e^(-x^2) ifadesini hesaplayan 
%bir Matlab programý yazýnýz. x deðeri kullanýcýdan istenmelidir. Programda 
%while döngüsü kullanýnýz, ve döngü 0.0001 tolerans deðerine kadar devam 
%etmelidir. Program hesaplamalardan sonra x ve   deðerlerini ekrana 
%yazdýrmalýdýr. En alta  e^(-1^2) 'yi hem Matlab ile hem de kendi 
%programýnýz ile hesaplayýp sonucunu long formatýnda yazýnýz.
% e^(-x^2) = 1 - x^2 + x^4/2! - x^6/3! + x^8/4!

x = input('x sayisini giriniz');
toplam=1; terim=1;
i=2;   %seri x^2 ile baþladýðý için
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

