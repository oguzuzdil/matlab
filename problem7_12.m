%a adl� sat�r vekt�r�n�n t�m elemanlar�n� tarayarak en k���kten en b�y��e
%do�ru b adl� vekt�re atayan bir program yaz�n�z. b vekt�r�n�n elemanlar�
%ilk eleman a vekt�r�n�n en k���k eleman� olacak �ekilde s�ralanacakt�r.

a = [1 2 3 4 5];
for m=1:size(a,2) %size(a,2): a vekt�r�n�n boyutu. veya m=1:5 de yaz�labirdi
    [y k] = min(a);
    a(k) = inf;
    b(m) = y
end