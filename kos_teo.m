% Kosinüs Teoremi
% sqrt(a^2+b^2-2ab.cos(theta)) ifadesini geri döndüren bir c(a,b,theta)
% fonksiyounu yazýlmak istenirse:

c = @(a, b, theta) sqrt(a.^2+b.^2-2*a.*b.*cos(theta))

kenar3=c(1,2,pi/4)
