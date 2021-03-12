% Kosin�s Teoremi
% sqrt(a^2+b^2-2ab.cos(theta)) ifadesini geri d�nd�ren bir c(a,b,theta)
% fonksiyounu yaz�lmak istenirse:

c = @(a, b, theta) sqrt(a.^2+b.^2-2*a.*b.*cos(theta))

kenar3=c(1,2,pi/4)
