kup = @(x) x*x*x   %fuction handle(@)
kup(4)  %kup artýk bir fonksiyon


MyFun = @(x) x+1
fzero(MyFun,0)
fzero(kup,5)
[a,fa] = fzero(kup,5)