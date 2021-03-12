t=0:0.01:5;
A1 = t.^3-4*t-2;
A2 = 1*t.^2+3*t-1;

plotyy(t,A1,t,A2);
title('plotyy komutu ile egri uretilmesi')
xlabel('t'),grid
