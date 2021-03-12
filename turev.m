function [F] = turev(t,y)
F=[y(2); -2*y(2)+3*y(1)+t];
end