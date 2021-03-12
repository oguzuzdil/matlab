t = 0:0.1:10;
f = 3*t.^2 + 2*t - 0.5;
g = 2*t.*cos(t);
subplot(121); plot(t,f);
xlabel('t') ; ylabel('f') ; title('f-t grafigi'), grid
subplot(122); plot(t,g);
xlabel('t') ; ylabel('g') ; title('f-g grafigi'), grid

