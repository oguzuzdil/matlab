
t = -1:0.1:2
s = t.^2 - 3*t.^2 + 2*t +2;
plot(t,s,'k-')

v = diff(s)./diff(t);
a = diff(v)./diff(t(1:end-1));
hold on
plot(t(1:end-1),v,'r-')
plot(t(1:end-2),a,'b-')