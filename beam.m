clc
clear all

% Boolean nesne temelli degisken turlerinden biridir.
% Nesne tipi degiskenlerin temel avantaji; alt metodlarýný
% kullanarak islemler gerceklestirebilmeleridir. 
% Fakat bu tur degiskenler, temel degisken turlerine gore
% bellekte daha cok yer isgal ettikleri icin mecbur 
% kalinmadikca kullanýlmamalidir.
% Boolean degiskeni mantik islemlerinde kullanilir.
% Yalnizca iki olasý deger vardýr: dogru (true) veya yanlýs (false).
% Varsayilan deger yanlýstýr. ve nesne referanslarý için boþtur (null).
% Mantik islemlerine dogrudan true veya false degerleri
% tanimlanabilecegi gibi diger degikenleri mantik islemleri
% kullanarak karsilastirarak da dogru veya yanlis olup 
% olmadigi program icinde bulunabilir.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

b = 300;       % kiris genisligi (mm)
h = 500;       % kiris yuksekligi (mm)
fck = 25;      % betonun karakterisitik basinc dayanimi (MPa)
fyk = 420;     % donatinin karakterisitik basinc dayanimi (MPa)
g = 20;        % olu yuk (kN/m)
q = 15;        % hareketli yuk (kN/m)
l = 5;         % kiris genisligi (m)
roMax = 0.02;  % maximum donati orani 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

P = 1.4*g + 1.6*q;         % yukun hesaplanmasi
fcd = fck/1.5;             % betonun tasarim basinc dayanimi (MPa)
fyd = fyk/1.15;            % donatinin tasarim basinc dayanimi (MPa)
d = h-34;                  % faydali yukseklik
M = P*l*l/8;               % tasarim momentinin hesaplanmasi (N.mm)
fctd = (0.35*sqrt(fck))/1.5;


%Esdeger gerilme blogu derinliginin hesaplanmasi
a =d-sqrt(d*d-(2*M*10^6/(0.85*fcd*b)));
		
disp(['a = ' num2str(a)]);

disp(['h = ' num2str(h)]);
		
gerilmeBlogu = a<h;

disp(['a<h => ' num2str(gerilmeBlogu)]);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if a<h 
    disp('true')
else
    disp('false')
end
		
as=0.85*fcd*b*a/fyd;   
		
disp(['As = ' num2str(as)]);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
		
ro = as/(b*d);
		
disp(['ro = ' num2str(ro)]);
		
roMin = 0.8*fctd/fyd;  %minimum donati orani
		
minDonatiOrani = ro >= roMin;

disp(['ro >= ro_Min =>  ' num2str(minDonatiOrani)]);
		
asMin = roMin*b*d;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

disp(['As_Min =  ' num2str(asMin)]);
		
minDonati = as > asMin;

disp(['As > As_Min => ' num2str(minDonati)]);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

asMax = roMax*b*d;

disp(['As_Max = ' num2str(asMax)]);
		
maxDonatiOrani = ro <= roMax;

disp(['ro <= ro_Max =>' num2str(maxDonatiOrani)]);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

maxDonati = as < asMax;

disp(['As < As_Max =>' num2str(maxDonati)]);
		
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

kirisGenisligi1 = true;
kirisGenisligi2 = false;

if(b>=250)
    disp(['Kiris Genisligi : ' num2str(kirisGenisligi1)]);
else
    disp(['Kiris Genisligi : ' num2str(kirisGenisligi2)]);
end
		
	
	


