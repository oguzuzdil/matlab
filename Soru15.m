x = round(100*rand(1,20))
y = round(100*rand(1,20));
subplot(141) , plot(x,y) , xlabel('x') , ylabel('y') 
title ('x ekseni lineer, y ekseni lineer egri cizimi'), grid
subplot(142) , semilogx (x,y) , xlabel('x') , ylabel('y')
title ('x ekseni logaritmik, y ekseni lineer egri cizimi')
subplot(143) , semilogy (x,y) , xlabel('x') , ylabel('y'), grid
title ('x ekseni lineer, y ekseni logaritmik egri cizimi')
subplot(144) , loglog (x,y) , xlabel('x') , ylabel('y')
title ('x ekseni logaritmik, y ekseni logaritmik egri cizimi'), grid

