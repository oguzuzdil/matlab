function yprime = secondode(x,y);
yprime = [y(2); -8*y(2)-2*y(1)+cos(x)];  % y' ; y"
end