% a = [0.3 2 -1 4 -5 0.1 8 -3.4 7 -2.3] vekt�r�n�n negatif elemanlar�n�
% say�p sonucu b adl� de�i�kene, s�f�r ve pozitif elemanlar�n� say�p c adl�
%de�i�kene atayan bir program yaz�n�z.

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
