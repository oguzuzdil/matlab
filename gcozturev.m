

function turev = gcozturev(t,x)  % t vektörünü ode komutu içinden okur
for a = 1:length(t);
    if t(a) <= 1;
        h(a) = 1;    % 0 ile 1 arasýnda geçerli olan h(t) ifadesi
    else 
        h(a) = -t(a) + 2; % 1 ile 2 arasýnda geçerli olan h(t) ifadesi (y=-x+2 denklemi)
    end
       turev = [-3*x(1) - x(2) + h(a) ; 3*x(1) - x(3) - 2*h(a); -3*x(2)+2];
end
