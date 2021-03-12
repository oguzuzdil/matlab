x=linspace(-5,10);
if x<-1
    f=-1;
elseif (x>=-1 && x<2)
    f=x.^2+x;
elseif (x>=2 && x<4)
    f=-x+2;
elseif (x>=4 && x<6)
    f=x.^3+2*x.^2-3;
else
    f=2*exp(0.1*(x-6));
end
f
plot(x,f)
xlabel('x') ; ylabel('f')
title('parcali fonksiyon grafigi'); grid