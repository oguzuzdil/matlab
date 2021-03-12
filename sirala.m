%Bu fonksiyon u vekt�r�n� artan �ekilde s�ralar ve sonucu v isimli vekt�rde
%saklar

function [v] = sirala(u)
n = length(u); %vekt�r�n boyutunu bul
v = u
%s�ralamaya ba�la
for i = 1:n-1
    for j = i+1:n
        if v(i) > v(j)
            temp = v(i);
            v(i) = v(j);
            v(j) = temp;
        end
    end
end


