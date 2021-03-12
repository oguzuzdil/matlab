% �ekil 12.9'da f(t) = e^(0,4581.t)-1 e�risi ile t ekseni aran�nda kalan
% alan�, t=[0:4] aral���nda trapz komutunu kullanarak bulun bir m dosyas�
% yaz�n�z

t = 0:0.01:4;
for k=1:length(t)
    if t(k)>=0 & t(k)<=2
        f(k)= exp(0.4581*t(k))-1;
    else
        f(k)=1.5;
    end
end
alan=trapz(t,f)