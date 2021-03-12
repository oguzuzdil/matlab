%Aþaðýda verilen program satýrlatýnda, cos(x) eðrisinin x=-pi/2 : pi/2
%arasýnda kalan alan hesabý, bu aralýk 10 eþit parçaya bölünerek ve
%yamuklar yöntemi kullanýlarak yapýlmaktadýr:

x = linspace(-pi/2,pi/2,10)   %[-pi/2 pi/2] aralýðýnda 10 aralýk olarak hesaplanýyor
y = cos(x)
trapz(x,y)
plot(x,y)

sin(pi/2)-sin(-pi/2) %analiztik çözüm, kesin çözüm

%x = linspace(-pi/2,pi/2,10000) %nümerik çözüm, aralýk artýrýldýkça analitik çözüme
%yaklaþýlýr; fakat aralýk artýrýldýkça nümerik hatalar, yuvarlama hatalarý
%artabilir.
