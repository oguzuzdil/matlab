%Aþaðýda verilen diferansiyel denklemi nümerik olarak Matlab ile  (0, 2) 
%aralýðýnda çözünüz. y(x),y'(x),y''(x) ve y''' (x) vektörlerini sýrasýyla 
%siyah düz çizgi, mavi kesik çizgi, kýrmýzý noktalý çizgi ve kýrmýzý düz ile çizdiriniz.

% y'''-2y'+y=-5x  ;  y(0)=-1  ,y'(0)=2,   y''(0)=1    

%y=y(1), y'=y(2), y''=y(3), y'''=y(4)
%y(4)=-5*x-y(1)+2*y(2)

function yprime=soru4(x,y)
yprime=[y(2);y(3);+2*y(2)-y(1)-5*x];
end
