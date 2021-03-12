% a = [0.3 2 -1 4 -5 0.1 8 -3.4 7 -2.3] vektörünün negatif elemanlarýný
% sayýp sonucu b adlý deðiþkene, sýfýr ve pozitif elemanlarýný sayýp c adlý
%deðiþkene atayan bir program yazýnýz.

a = [0.3 2 -1 4 -5 0.1 8 -3.4 7 -2.3];
b=0;c=0;
for k=1:length(a)
    if a(k)<0
        b=b+1;
    else
        c=c+1;
    end
end
b
c
