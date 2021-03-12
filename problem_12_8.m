% �ekil 12.13'te verilen taral� alan� g�steren OKB alan�n� hesaplayan ve
% her iki e�riyi ayn� eksen �zerinde �izdiren program� yaz�n�z.

% y2 = y1 'den  x^2 = 0.5x+1  =>  x^2-0,5x-1 = 0
% deklemin katsay�lar� [1 -0.5 -1]
% roots, polinom k�klerini bulur
a = max(roots([1 -0.5 -1]))    %y1 ve y2 e�rilerinin kesi�ti�i noktalar�n en b�y��� aran�yor



OKBa_yamugu = quad('0.5*x+1',0,a)   
OaB_alti = quad('x.^2',0,a)         %yar�m parabol�n alt�ndaki alan
alan = OKBa_yamugu - OaB_alti       %aral�nlan alan hesab�

x=-2:0.1:2;
y=0.5*x+1;
grid,hold on   %iki e�ri ayn� eksen �zerine �izdiriliyor
plot(x,y)
y2=x.^2
plot(x,y2)

%Not: a de�eri biliniyorsa:
% S = quad('0.5*x+1-x.^',0,a)
%bu komut aran�lan alan� tek ba��na bulabilir