% y= ax^2 +bx + c olarak verilen ikinci dereceden bir denklemin katsayýlarý
% girildiðinde her iki kökü de altprogram içinde hesaplayan ve Command
% Window ortamýnda yazdýran bir program yazýnýz.

function [h1, h2] = kokbull (k1,k2,k3)
x=-k2/(2*k1);   %-b/2a
y=sqrt(k2^2-4*k1*k3)/2*k1;   %b^2-4ac/2a
h1=x+y;  %(-b+kökdelta)/2a
h2=x-y;  %(-b-kökdelta)/2a
end