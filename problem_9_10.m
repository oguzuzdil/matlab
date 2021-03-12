% 0.5 = -( ln(0.5)*log(30)*sin(pi/6)) / ( 0.5*arctan(0.5)*3^1/5 -x^3)
% ifadesindeki x deðerini fzero komutu ilen bulan programý yazýnýz. x0=-1
% alýnýz

x0=-2;
[x, fonkdegeri, kontrol] = fzero('ffonk',x0)