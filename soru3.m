	%f(x)=10Sin(x)+x  ve  g(x)=x^2+x-10  fonksiyonlar�n�n grafikleri  verilmi�tir. 
%a)	Bu iki e�rinin g�sterilen 4 kesi�im noktas�n�  bulunuz. 
%b) E�rilerin aras�nda kalan alan� Matlab?de Simpson y�ntemini kullanan 
%n�merik integrasyon komutlar�n� kullanarak bulunuz.

fg = @(x) ((x.^2+x-10)-(10.*sin(x)+x))
r1 = fzero(fg,-4)
r2 = fzero(fg,-3)
r3 = fzero(fg,-1)
r4 = fzero(fg,3)
alan = abs(quad(fg,r3,r4))

