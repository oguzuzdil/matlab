%A�a��da verilen program sat�rlat�nda, cos(x) e�risinin x=-pi/2 : pi/2
%aras�nda kalan alan hesab�, bu aral�k 10 e�it par�aya b�l�nerek ve
%yamuklar y�ntemi kullan�larak yap�lmaktad�r:

x = linspace(-pi/2,pi/2,10)   %[-pi/2 pi/2] aral���nda 10 aral�k olarak hesaplan�yor
y = cos(x)
trapz(x,y)
plot(x,y)

sin(pi/2)-sin(-pi/2) %analiztik ��z�m, kesin ��z�m

%x = linspace(-pi/2,pi/2,10000) %n�merik ��z�m, aral�k art�r�ld�k�a analitik ��z�me
%yakla��l�r; fakat aral�k art�r�ld�k�a n�merik hatalar, yuvarlama hatalar�
%artabilir.
