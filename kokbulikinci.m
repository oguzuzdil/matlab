% ikinci dereceden bir denklemin köklerinin hesaplanmasý
format compact; %satýr aralýðý býrakýlmayacaðý belirtiliyor
a = input ('denklemin a katsayisini giriniz a:' );
b = input ('denklemin b katsayisini giriniz b:' );
c = input ('denklemin c katsayisini giriniz c:' );
x = -b/(2*a);
y = sqrt (b^2-4*a*c)/(2*a);
disp ('birinci kok degeri'),
x1 = x+y;
disp(x1)
disp ('ikinci kok degeri'),
x2 = x-y;
disp(x2)