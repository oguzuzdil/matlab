x= [ -2 , 0 , 3, 7 , 11, 16] ;     % boyut 6
y= [ 1 , 3, 8 , 12 , 18, 25 ] ;    % boyut 6

dx=diff(x)                  % delta_x fark vektörü hesaplanýyor
% sonucun boyutu 5 [(x(2)-x(1)) (x(3)-x(2))... iþlemi yapýldýðý için]

dy=diff(y)                   % delta_y fark vektörü hesaplanýyor 
% sonucun boyutu 5

df=diff(y)./diff(x)          % türev hesaplanýyor (türevin hesaplanabilmesi için x ve y'nin boyutlarý eþit olmalý)


%Geri Fark için
xd =x(2:end) 

%Ýleri Fark için
xd =x(1:end-1) 

%merkezi farklar için x vektöründe 0 alýnabilir. Fakat -2 alýnamaz. Çünkü
%önceki deðeri yok. Merkeziye göre türev deðeri daha doðru.
%aralýklar küçükse merkezi,ileri ve geri arasýnda sonuç farký az olur.
%merkezi fark:
%3'ten 16'ya kadar, -2'den 7'ye kadar