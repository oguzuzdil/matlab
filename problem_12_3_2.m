% y = 2e^(-4x) - 1,2.sin(4x) denkleminin x=0:2pi/3 aralýðýnda y(x)
% eðrisini, türevini geri fark, ileri fark ve merkezi fark yaklaþýmlarý ile
% çizdiriniz.

x=0:0.1:2*pi/3;
n=length(x);
y = [2*exp(-4*x) - 1.2*sin(4*x)]
hold on
plot(x,y,'k-.')  % y(x) eðrisi çizdiriliyor

turev = diff(y)./diff(x) ;	% ileri veya geri fark için türev alýnýyor 

plot(x(2:end) , turev, ' b-')                % geri fark türev eðrisi (son kýsým alýnarak)

plot(x(1:end-1) , turev, ' g--')               % ileri fark türev eðrisi (ilk kýsým alýnarak)

merkezi=(y(3:n)-y(1:n-2))./(x(3:n)-x(1:n-2));  %  merkezi türev ifadesi 
plot(x(2:n-1) , merkezi, ' r --')          %merkezi fark türev eðrisi

dy=[-8*exp(-4*x)-4.8*cos(4*x)];
plot(x,dy, 'k--')
legend ('y','gerifark','ilerifark', 'merkezi','dy/dx') 
xlabel ( ' x ' )

%merkezi fark ile en uç noktalardaki deðerler bulunamýyor. Bu deðerleri
%ileri ve geri farklar ile bulabiliriz
