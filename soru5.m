%A�a��da verlien diferansiyel denklemi n�merik ve sembolik olarak Matlab 
%ile (-2, +2) aral���nda ��z�n�z. Her iki ��z�m sonucunu kar��la�t�rmak 
%i�in sembolik ��z�m� siyah �izgi ile n�merik ��z�m� de korm�z� yuvarlak
%noktalar ile �izdiriniz.

% y''[t] + 2y'[t] - 3y[t] = t   ;  y[0]=0  ,  y'[0]=0


%�ncelikle fonlsiyon ayr� bir dosya olarak kaydedilir:
%function [F] = turev( t,y )
%F=[y(2); -2*y(2)+3*y(1)+t];
%end


% N�merik ��z�m ode45 ile
span=[0 2];
y0=[0;0];
[t,y]=ode45(('turev'),span,y0); plot(t,y(:,1),'ro');


% Analitik ��z�m 
s=dsolve('D2z+2*Dz-3*z-x','z(0)=0,Dz(0)=0','x'); 
x = linspace(0,2,100);
z = eval(vectorize(s));
hold on
plot(x,z,'b-')
