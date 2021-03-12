function [A, P, R] = soru1(y, r)
if y<=r
    h=y;
    theta = 2*acos((r-h)/r);
    A = r^2*(theta - sin(theta))/2;
    P = r*theta;
    R = A/P;
    
elseif y>r
    h = 2*r -y;
    theta = 2*acos((r-h)/r);
    A = pi*r^2-r^2*(theta-sin(theta))/2;
    P = 2*pi*r - r*theta;
    R = A/P;
end
    