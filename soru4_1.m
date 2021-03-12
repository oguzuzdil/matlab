%Aþaðýda verilen diferansiyel denklemi nümerik olarak Matlab ile  (0, 2) 
%aralýðýnda çözünüz. y(x),y'(x),y''(x) ve y''' (x) vektörlerini sýrasýyla 
%siyah düz çizgi, mavi kesik çizgi, kýrmýzý noktalý çizgi ve kýrmýzý düz ile çizdiriniz.

% y'''-2y'+y=-5x  ;  y(0)=-1  ,y'(0)=2,   y''(0)=1    

%y=y(1), y'=y(2), y''=y(3), y'''=y(4)
%y(4)=-5*x-y(1)+2*y(2)

%Öncelikle fonksiyon ayrý bir dosya olarak kaydedilir:
%function yprime=soru4(x,y)
%yprime=[y(2);y(3);+2*y(2)-y(1)-5*x];
%end

[x,y] = ode23(@soru4,[0 2],[-1 2 1]);
plot(x,y(:,1),'k');       %y(x) eðrisi
hold on
plot(x,y(:,2),'--b');     %y'(x) eðrisi
plot(x,y(:,3),'-.r');     %y''(x) eðrisi
y4 = -5*x(:,1) + 2*y(:,2) - y(:,1);
plot(x,y4,'r');           %y'''(x) eðrisi
legend('y', 'dy','ddy','dddy')


