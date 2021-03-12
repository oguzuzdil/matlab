% f(x) = x^3 - 2x - 5 fonksiyonunun x0=0 civarýndaki kökünü bulunuz ve
% iterasyon adýmlarýný gösteriniz

x0=0;
options = optimset('display','iter')
[x, fonkdegeri, kontrol, ozellik] = fzero('fzero_uygulama2',x0,options)
