%Verilen B matrisi oluþturuluyor
v = 4:4:20;
B = zeros(5);
for i=1:5
    B(i,:) = v + (i-1);
end
B

%Oluþturulan B matrisi içinden istenilen elemanlar alýnýp C isimli bir
%matrise atanýyor
C = B([2,4,5], [1,3])   %2.,4.,5. satýr, 1, ve 3. sütundaki elemanlar alýnýyor