function dx = cevap2(t,x)
t = 0:0.01:6;
aa = length(t);
r = ones(aa,1);
for k=1:aa
    if t(k) >= 0 & t(k) <= 2
        r(k)=1;
    elseif t(k) >= 2 & t(k) <= 4
         r(k)=3;
    end
    dx = [x(2); x(3); 2*x(3)-3*x(2)-5 + r(k)];
end