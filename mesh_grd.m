[x,y] = meshgrid(0:.1:2, 0:.1:2);  %x ve y'yi ata, mesh= a�, 3 boyutlu �izim i�in
mesh(x, y, c(x, y, pi/4));
xlabel('Side 1');
ylabel('Side 2');
zlabel('Side 3');
title('45 derece aciya sahip iki kenarin karsisindaki kenar buyuklugu')
