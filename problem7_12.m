%a adlý satýr vektörünün tüm elemanlarýný tarayarak en küçükten en büyüðe
%doðru b adlý vektöre atayan bir program yazýnýz. b vektörünün elemanlarý
%ilk eleman a vektörünün en küçük elemaný olacak þekilde sýralanacaktýr.

a = [1 2 3 4 5];
for m=1:size(a,2) %size(a,2): a vektörünün boyutu. veya m=1:5 de yazýlabirdi
    [y k] = min(a);
    a(k) = inf;
    b(m) = y
end