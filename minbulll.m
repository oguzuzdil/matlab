%minimum say�n�n ve bu say�n�n sat�r ve s�tun numaras�n�n bulunmas�

function [d e xmin] = minbulll(w)
[a b] = size(w);
xmin = w(1,1);
d=1;
e=1;
for u=1:a
    for v=1:b
        if w(u,v) < xmin
            xmin = w(u,v);
            d=u;
            e=v;
        end
    end
end

            
            
