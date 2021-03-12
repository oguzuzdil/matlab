f = inline('3*sin(2*x.^2)')
f =
     Inline function:
     f(x) = 3*sin(2*x.^2)
argnames(f)
ans = 
    'x'
formula(f)
ans =
3*sin(2*x.^2)
