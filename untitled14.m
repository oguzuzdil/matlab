 fonk1 = @(x) x^3-3*x^2+5*x-exp(-x^2)
 ezplot(fonk1,[-5,5])    %easyplot
 grid on

 [x, fval, flag, outpu] = fzero(fonk1,5)