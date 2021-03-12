function F = ffonk(x)
b = log(0.5)*log10(30)*sin(pi/6);
a = 0.5*atan(0.5)*3^(1/5);
F = 0.5 + (b/(a-x^3));
