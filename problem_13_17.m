



%�ncelikle fonksiyon ayr� bir dosya olarak kaydedilir

% function turev = gcozturev(t,x)  % t vekt�r�n� ode komutu i�inden okur
% for a = 1:length(t);
%    if t(a) <= 1;
%        h(a) = 1;    % 0 ile 1 aras�nda ge�erli olan h(t) ifadesi
%    else 
%        h(a) = -t(a) + 2; % 1 ile 2 aras�nda ge�erli olan h(t) ifadesi (y=-x+2 denklemi)
%    end
%       turev = [-3*x(1) - x(2) + h(a) ; 3*x(1) - x(3) - 2*h(a); -3*x(2)+2];
% end

% grafikte [0 1] aral���nda h=1; [1 2] aral���nda denklem elde edilmeli

[t w] = ode23('gcozturev', [0 2], [0 -1 2]');
subplot(3,1,1) , plot(t,w(:,1)) , title('x(t) cizimi')
subplot(3,1,2) , plot(t,w(:,2)) , title('y(t) cizimi')
subplot(3,1,3) , plot(t,w(:,3)) , title('z(t) cizimi')
% ode komutu gere�i olarak