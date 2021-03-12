% y = 2e^(-4x) - 1,2.sin(4x) denkleminin x=0:2pi/3 aral���nda y(x)
% e�risini, t�revini geri fark, ileri fark ve merkezi fark yakla��mlar� ile
% �izdiriniz.

x=0:0.1:2*pi/3;
n=length(x);
y = [2*exp(-4*x) - 1.2*sin(4*x)]
hold on
plot(x,y,'k-.')  % y(x) e�risi �izdiriliyor

turev = diff(y)./diff(x) ;	% ileri veya geri fark i�in t�rev al�n�yor 

plot(x(2:end) , turev, ' b-')                % geri fark t�rev e�risi (son k�s�m al�narak)

plot(x(1:end-1) , turev, ' g--')               % ileri fark t�rev e�risi (ilk k�s�m al�narak)

merkezi=(y(3:n)-y(1:n-2))./(x(3:n)-x(1:n-2));  %  merkezi t�rev ifadesi 
plot(x(2:n-1) , merkezi, ' r --')          %merkezi fark t�rev e�risi

dy=[-8*exp(-4*x)-4.8*cos(4*x)];
plot(x,dy, 'k--')
legend ('y','gerifark','ilerifark', 'merkezi','dy/dx') 
xlabel ( ' x ' )

%merkezi fark ile en u� noktalardaki de�erler bulunam�yor. Bu de�erleri
%ileri ve geri farklar ile bulabiliriz
