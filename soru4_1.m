% grafikte iki eðri arasýnda kalan taralý alaný Matlab?de Simpson yöntemini 
%kullanan nümerik integrasyon komutlarýný kullanarak bulunuz ve bulduðunuz 
%sonucu el ile yapacaðýnýz analitik çözümle kýyaslayýnýz.

%Öncelikle fonksiyon ayrý bir dosya olarak kaydedilir:
%function y = soru4(x)
%         y= x-x.^3;
%end

% y1=y2 =>  x^3=x  =>  x^3-x = 0  yani  x^3 +0x^2 -x +0 = 0
% denklemin katsayýlarý: [1 0 -1 0]

% Ýki eðrinin kesiþtiði noktayý bulalým (1 çýkmasý gerekir)
a = max(roots([1 0 -1 0]))

% 0-1 arasýnda integrali alalým
A = quad('soru4',0,1)



%2. yol:
a = max(roots([1 0 -1 0]))
F = @(x) x-x.^3
A2 = quad(F,0,1)

%3. yol:
a = max(roots([1 0 -1 0]))
A3 = quad('x-x.^3',0,1)