% M = [1 4 1 7 2; 5 2 3 6 4; 6 6 5 4 4; 5 2 6 3 7; 4 5 1 4 6] matrisinin
% köþegenleri üzerindeki sayýlarý for döngüsü içerinde deðiþtiren bir
% program yazýnýz (1 ile 2, 2 ile 6 vs. yer deðiþtirmeli)

M=round(rand(5)*7)
for i=1:5
    gecici_degisken = M(i,i);
    M(i,i) = M(i,6-i);
    M(i,6-i) = gecici_degisken;
end
M
