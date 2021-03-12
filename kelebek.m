function [X,Y] = kelebek(t)
X = sin(t).*(exp(cos(t))-2.*cos(4*t)-sin(t/12).^5);
Y = cos(t).*(exp(cos(t))-2.*cos(4*t)-sin(t/12).^5);
end
