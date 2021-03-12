%Nümerik çözüm
figure
[x,y] = ode23('soru5', [0 4] , [1 0]);
plot(x,y(:,1),'b-')    %y grafigi
xlabel('x') , ylabel('y') , grid on
hold on
plot(x,y(:,2),'r.-')    %y' grafigi
y3= y(:,2) - 2*y(:,1);
plot(x,y3,'k--')    %y'' grafigi
