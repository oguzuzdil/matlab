x= [ -2 , 0 , 3, 7 , 11, 16] ;     % boyut 6
y= [ 1 , 3, 8 , 12 , 18, 25 ] ;    % boyut 6

dx=diff(x)                  % delta_x fark vekt�r� hesaplan�yor
% sonucun boyutu 5 [(x(2)-x(1)) (x(3)-x(2))... i�lemi yap�ld��� i�in]

dy=diff(y)                   % delta_y fark vekt�r� hesaplan�yor 
% sonucun boyutu 5

df=diff(y)./diff(x)          % t�rev hesaplan�yor (t�revin hesaplanabilmesi i�in x ve y'nin boyutlar� e�it olmal�)


%Geri Fark i�in
xd =x(2:end) 

%�leri Fark i�in
xd =x(1:end-1) 

%merkezi farklar i�in x vekt�r�nde 0 al�nabilir. Fakat -2 al�namaz. ��nk�
%�nceki de�eri yok. Merkeziye g�re t�rev de�eri daha do�ru.
%aral�klar k���kse merkezi,ileri ve geri aras�nda sonu� fark� az olur.
%merkezi fark:
%3'ten 16'ya kadar, -2'den 7'ye kadar