function[C] = matriscarp(A,B)
%|--------------------------------------|
%| Bu fonksiyon matris carpimi yapar |
%| C(nxm) = A(nxp)*B(pxm) |
%|--------------------------------------|
%Once, matris boutlarini kontrol edelim
[nrA,ncA] = size(A);
[nrB,ncB] = size(B);
if ncA ~= nrB
    error('matriscarp ?uyumsuz A ve B matrisleri');
    abort;
end
%Matris carpimini yap
C = zeros(nrA,ncB);
for i = 1:nrA
    for j = 1:ncB
        for k = 1:ncA
            C(i,j) = C(i,j) + A(i,k)*B(k,j);
        end
    end
end