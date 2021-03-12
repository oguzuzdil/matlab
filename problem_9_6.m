% y(x) = x^3-3*x^2+5*x-exp(-x^2) = 0
%doðrusal olmayan y(x) eðrisinin x0=1 civarýndaki kökünü bulunuz.
% problem çözümünde öncelikle verilen y(x) fonksiyonu 'fsecant.m' adlý alt
% programa kaydedilir
x = fzero('fsecant',1)    %fsecant bir fonksiyondur, önceden tanýmlanmalý