%Verilen B matrisi olu�turuluyor
v = 4:4:20;
B = zeros(5);
for i=1:5
    B(i,:) = v + (i-1);
end
B

%Olu�turulan B matrisi i�inden istenilen elemanlar al�n�p C isimli bir
%matrise atan�yor
C = B([2,4,5], [1,3])   %2.,4.,5. sat�r, 1, ve 3. s�tundaki elemanlar al�n�yor