%Bu fonksiyon u vektörünü artan şekilde sıralar ve sonucu v isimli vektörde
%saklar

function [v] = sirala(u)
n = length(u); %vektörün boyutunu bul
v = u
%sıralamaya başla
for i = 1:n-1
    for j = i+1:n
        if v(i) > v(j)
            temp = v(i);
            v(i) = v(j);
            v(j) = temp;
        end
    end
end


