% 0.5 = -( ln(0.5)*log(30)*sin(pi/6)) / ( 0.5*arctan(0.5)*3^1/5 -x^3)
% ifadesindeki x de�erini fzero komutu ilen bulan program� yaz�n�z. x0=-1
% al�n�z

x0=-2;
[x, fonkdegeri, kontrol] = fzero('ffonk',x0)