%���nc� dereceden (xt^3+yt^2+zt+w) bir polinomun x,y,x,w katsay�lar� ve t
%de�eri girildi�inde polinomun de�erini hesaplayan bir program yaz�n�z.
%E�er x,y,z,w ve t de�eri ayn� anda s�f�r olursa program sona erecek, aksi
%halde yeni katsay�lar ve t de�erleri girildi�i s�rece program �al��maya
%devam edecektir. E�er t de�eri karma��k bir say� ise yine program sona
%erecektir.

% xt^3+yt^2+zt+w polinom de�erinin hesaplanmas�
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

        
