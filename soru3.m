	%f(x)=10Sin(x)+x  ve  g(x)=x^2+x-10  fonksiyonlarýnýn grafikleri  verilmiþtir. 
%a)	Bu iki eðrinin gösterilen 4 kesiþim noktasýný  bulunuz. 
%b) Eðrilerin arasýnda kalan alaný Matlab?de Simpson yöntemini kullanan 
%nümerik integrasyon komutlarýný kullanarak bulunuz.

fg = @(x) ((x.^2+x-10)-(10.*sin(x)+x))
r1 = fzero(fg,-4)
r2 = fzero(fg,-3)
r3 = fzero(fg,-1)
r4 = fzero(fg,3)
alan = abs(quad(fg,r3,r4))

