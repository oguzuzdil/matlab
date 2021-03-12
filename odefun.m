
% Bir Tek Dereceli Sistemin Tepkisi

function ydot = odefun(t,y,xi,Tn,t1,a2)
 a =interp1(t1,a2,t);   
 ydot = [y(2); -(4*pi*xi/Tn)*y(2)-(2*pi/Tn)^*y(1)-a];