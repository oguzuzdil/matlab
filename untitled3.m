%Aþaðýda verilen adi diferans,yel denklemi çözünüz:

% x'(t) = x(t) + 2y(t) - z(t)
% y'(t) = x(t) + z(t)
% z'(t) = 4x(t) - 4y(t) + 5z(t)

% Baþlangýç koþullarý:
% x(0) = 1, y(0) = 2, ve z(0) = 3

inits = ' x(0)=1 , y(0)=2 , z(0) =3 '


[x,y,z] = dsolve('Dx=x+2*y-z','Dy=x+z','Dz=4*x-4*y+5*z',inits) 


t=linspace(0,0.5,25);
xx=eval(vectorize(x));
yy=eval(vectorize(y));
zz=eval(vectorize(z));
plot(t, xx, t, yy, t, zz)