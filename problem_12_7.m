% f(t) = -t^3 + 3t^2 - 2t e�risi ile t ekseni aras�nda t=0:2.2 saniye
% aral���nda kalan toplam alan� hesaplay�n�z

%�ncelikle verilen e�ri (t,f) d�zleminde �izdirilmelidir
t = 0:0.01:2.2;
f = -(t.^3) + 3*(t.^2) - (2*t);
plot(t,f)
xlabel('t')
ylabel('f')
grid on

%Grafi�i �izdirilen e�riye bak�ld���nda, e�rinin Ot ekseni ile aras�nda iki
%adet alan bulunmaktad�r. Bunlardan ilki [0,1]�saniye aral���nda, di�eri
%ise [1 2] saniye aral���ndad�r. E�er f(t) e�risinin direkt olarak
%integrali al�n�rsa iki alan de�eri i�aret olarak farkl� oldu�undan
%topland�klar�nda problem de istenen toplam alan de�eri bulunmu� olmaz. Bu
%nedenle e�ri mutlak de�eri al�narak integre edilirse aranan toplam alan
%hesaplanm�� olur:
alan = quad('abs(-(x.^3) + 3*(x.^2) -(2*x))', 0,2.2)
