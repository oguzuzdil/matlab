% y1 = y2
% x^2 -3x +2 = x+1
% x^2 -4x + 1 = 0

A = max(roots([1 -4 1]))
B = min(roots([1 -4 1]))

Alan = abs(quad('x+1-(x.^2-3*x+2)',A,B))

