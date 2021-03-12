%Bir cisim t=0 anýnda yerden h0=45m kadar yükseklikten v0= 40 m/sn lik ilk
%hýz ile yatay olarak fýrlatýlmaktadýr. Havanýn cisme gösterdiði direnç
%ihmal edilmektedir.Cisim t=0 anýndan düþtüðü ana kadar olan zaman
%süresince, cismin yerden yüksekliðinin (h) zamana (t) göre deðiþimini
%çiziniz (g=10m/s^2)
%h(t)=0=h0-0.5*g*t^2 => 45=0.5*10*t^2 => tuçuþ= 3sn
%h(t)=h0-0.5*g*t^2 => h(t)=45-0.5*10*t^2

g=10; h0=45  %cismin yerden yükseliði (m)
%Zaman hesabý
tu=sqrt(h0/(0.5*g));  %yere düþme süresi
%100 elemanlý zaman vektörü hesabý
t=linspace(0,tu,100);
h=h0 - g/2*t.^2;  %cismin yerden yüksekliði
plot(t,h,'k:');  %h(t) nin çizimi
title('dusey atis'),
xlabel('zaman(s)'),
ylabel('yukseklik(m)'), grid
