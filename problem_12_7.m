% f(t) = -t^3 + 3t^2 - 2t eðrisi ile t ekseni arasýnda t=0:2.2 saniye
% aralýðýnda kalan toplam alaný hesaplayýnýz

%Öncelikle verilen eðri (t,f) düzleminde çizdirilmelidir
t = 0:0.01:2.2;
f = -(t.^3) + 3*(t.^2) - (2*t);
plot(t,f)
xlabel('t')
ylabel('f')
grid on

%Grafiði çizdirilen eðriye bakýldýðýnda, eðrinin Ot ekseni ile arasýnda iki
%adet alan bulunmaktadýr. Bunlardan ilki [0,1] saniye aralýðýnda, diðeri
%ise [1 2] saniye aralýðýndadýr. Eðer f(t) eðrisinin direkt olarak
%integrali alýnýrsa iki alan deðeri iþaret olarak farklý olduðundan
%toplandýklarýnda problem de istenen toplam alan deðeri bulunmuþ olmaz. Bu
%nedenle eðri mutlak deðeri alýnarak integre edilirse aranan toplam alan
%hesaplanmýþ olur:
alan = quad('abs(-(x.^3) + 3*(x.^2) -(2*x))', 0,2.2)
