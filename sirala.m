function [v] = sirala(u, itype)
n = length(u); %vekt�r�n boyutunu bul
v = u
%s�ralamaya ba�la
if itype == 'i'
    for i = 1:n-1
        for j = i+1:n
            if v(i) > v(j)
                temp = v(i);
                v(i) = v(j);
                v(j) = temp;
            end
        end
    end
else
    for i = 1:n-1
        for j = i+1:n
            if v(i) < v(j)
                temp = v(i);
                v(i) = v(j);
                v(j) = temp;
            end
        end
    end
end

            
          

