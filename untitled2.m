MyFun = @(x) x+1
[xVal, fVal] = fzero(@(xD) MyFun(xD), 0)

%veya

[xVal, fVal] = fzero(@(xD) xD+1, 2)



