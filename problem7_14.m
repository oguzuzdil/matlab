%Üçüncü dereceden (xt^3+yt^2+zt+w) bir polinomun x,y,x,w katsayýlarý ve t
%deðeri girildiðinde polinomun deðerini hesaplayan bir program yazýnýz.
%Eðer x,y,z,w ve t deðeri ayný anda sýfýr olursa program sona erecek, aksi
%halde yeni katsayýlar ve t deðerleri girildiði sürece program çalýþmaya
%devam edecektir. Eðer t deðeri karmaþýk bir sayý ise yine program sona
%erecektir.

% xt^3+yt^2+zt+w polinom deðerinin hesaplanmasý
x=1; y=1; z=1; t=0;
while x~=0 | y~=0 | z~=0 | w~=0 | t~=0
    x=input('x katsayisini gir:  ');
    y=input('y katsayisini gir:  ');
    z=input('z katsayisini gir:  ');
    w=input('w degerini gir:  ');
    t=input('t degerini gir:  ');
    
    if imag(t)~=0,
        't degeri karmasik sayi oldugundan dolayi iterasyon sona erdi'
    end
    polinom = x*t^3+y*t^2+z*t+w;
    'polinom degeri'
    disp(polinom)
end
if imag(t)==0,
    'x=y=z=t=0 oldugundan dolayi program sona erdi'
end

        
