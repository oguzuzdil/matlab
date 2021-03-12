% Þekil 12.13'te verilen taralý alaný gösteren OKB alanýný hesaplayan ve
% her iki eðriyi ayný eksen üzerinde çizdiren programý yazýnýz.

% y2 = y1 'den  x^2 = 0.5x+1  =>  x^2-0,5x-1 = 0
% deklemin katsayýlarý [1 -0.5 -1]
% roots, polinom köklerini bulur
a = max(roots([1 -0.5 -1]))    %y1 ve y2 eðrilerinin kesiþtiði noktalarýn en büyüðü aranýyor



OKBa_yamugu = quad('0.5*x+1',0,a)   
OaB_alti = quad('x.^2',0,a)         %yarým parabolün altýndaki alan
alan = OKBa_yamugu - OaB_alti       %aralýnlan alan hesabý

x=-2:0.1:2;
y=0.5*x+1;
grid,hold on   %iki eðri ayný eksen üzerine çizdiriliyor
plot(x,y)
y2=x.^2
plot(x,y2)

%Not: a deðeri biliniyorsa:
% S = quad('0.5*x+1-x.^',0,a)
%bu komut aranýlan alaný tek baþýna bulabilir