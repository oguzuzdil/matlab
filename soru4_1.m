%A�a��da verilen diferansiyel denklemi n�merik olarak Matlab ile  (0, 2) 
%aral���nda ��z�n�z. y(x),y'(x),y''(x) ve y''' (x) vekt�rlerini s�ras�yla 
%siyah d�z �izgi, mavi kesik �izgi, k�rm�z� noktal� �izgi ve k�rm�z� d�z ile �izdiriniz.

% y'''-2y'+y=-5x  ;  y(0)=-1  ,y'(0)=2,   y''(0)=1    

%y=y(1), y'=y(2), y''=y(3), y'''=y(4)
%y(4)=-5*x-y(1)+2*y(2)

%�ncelikle fonksiyon ayr� bir dosya olarak kaydedilir:
%function yprime=soru4(x,y)
%yprime=[y(2);y(3);+2*y(2)-y(1)-5*x];
%end

[x,y] = ode23(@soru4,[0 2],[-1 2 1]);
plot(x,y(:,1),'k');       %y(x) e�risi
hold on
plot(x,y(:,2),'--b');     %y'(x) e�risi
plot(x,y(:,3),'-.r');     %y''(x) e�risi
y4 = -5*x(:,1) + 2*y(:,2) - y(:,1);
plot(x,y4,'r');           %y'''(x) e�risi
legend('y', 'dy','ddy','dddy')


