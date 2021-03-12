%Bir cismin hýz deðiþimi v(t) = 3t^2 + 4t + 6 m/s olarak verilmiþtir.
%Hareketinin t=3. saniyesindeki;
% a)Ývmesini dv/dt formülü ile hesaplayýnýz
% b)a=diff(v)./diff(t) komutu ile hesaplayýnýz

%a þýkký:
% a=dv/dt = d(3*t^2+4*t+6)/dt = 6*t+4|(t=3 için) = 22m/sn^2

%b þýkký:
t=0:0.1:3;  %deðiþken, 0.1=>100 deðer (t'yi ayrýklaþtýrýyoruz)
v=3*t.^2+4*t+6;  %türevi alýnacak fonksiyon
dt=diff(t); 
dv=diff(v); 
a=diff(v)./diff(t);  %tüm zaman aralýðý boyunca ivme deðerleri bulunuyor
ivme_3saniye = a(end)
%(geri fark yöntemi)

%ivme_3saniye = 21.7000
%Bulunan ivme deðeri, gerçek ivme deðerine (22 m/sn^2) deðerine yakýndýr.
%Eðer programda t=0:0.01:3 kullanýlýrsa a=21,97 m/sn^2 elde edilir.
%t=0:0.0001:3 kullanýlýrsa a=21,9997 m/sn^2 elde edilir. Bu sonuca
%bakýlarak diff komutu ile elde edilen türev deðerlerinin, deðiþlenin (t)
%artýþ aralýðý ile çok yakýndan alakalý olduðu söylenebilir.

%merkezi fark yöntemi ile türev almak istersek: diff komutu ile
%yapamayýz,for dögüsü ile bulabiliriz

   