function [A,pw] = soru1(d, r)
if d>r
    h=2*r-d;
    theta=2*acos((r-h)/r);
    K=(r^2)*(theta-sin(theta))*0.5;
    s=r*theta;
    A=(pi*r^2)-K;
    pw=2*pi*r-s;
    
else
    h=d;
    theta=2*acos((r-h)/r);
    K=(r^2)*(theta-sin(theta))*0.5;
    s=r*theta;
    A=K;
    pw=s;
end