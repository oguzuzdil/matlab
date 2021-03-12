function xprime = fonks(t,x)
if t<2
    r=1
elseif t>=2 && t<6
    r=3
else
    r=0
end
xprime = [x(2); x(3); r+2*x(3)-3*x(2)-5];  % x1 in türevi, x2 nin türev, ,x3 ün türevi
end

