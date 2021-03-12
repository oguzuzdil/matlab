clear all
clc
clf

%Analitik çözüm
t_a = 0:0.2:3;
x_a = [-t_a.^2+3*t_a];
V_a = [-2*t_a+3];
a_a = [-2];


%Nümerik çözüm
t = 0:0.2:3;
t1 = 0:0.2:2.8;
k = length(t);
l = length(t1);
x = [-t.^2+3*t];

%Cismin hýzý

V = diff(x)./diff(t);   %konumun zamana göre türevinden hýz elde ediliyor
hold on
plot(t(2:end),V,'b', 'LineWidth',2)             %geri farklar
plot(t(1:end-1),V,'r', 'LineWidth',2)           %ileri farklar
V_merkezi = (x(3:k)-x(1:k-2))./(t(3:k)-t(1:k-2));
plot(t(2:k-1),V_merkezi,'g','LineWidth',2)     %merkezi farklar
plot(t_a(1:end),V_a,'k--','LineWidth',2)       %analitik çözüm
title('Hýz')
legend('geri fark','ileri fark','merkezi fark','analitik')


%Cismin ivmesi

a = diff(V)./diff(t1);   %hýzýn zamana göre türevinden ivme elde ediliyor
figure
hold on
plot(t1(2:end),a,'b','LineWidth',2)           %geri farklar
plot(t1(1:end-1),a,'r','LineWidth',2)         %ileri farklar
a_merkezi = (V(3:l)-V(1:l-2))./(t1(3:l)-t1(1:l-2));
plot(t1(2:l-1),a_merkezi,'g','LineWidth',2)   %merkezi farklar
plot(t_a,a_a,'k+','LineWidth',2)              %analitik çözüm
title('Ivme')
legend('geri fark','ileri fark','merkezi fark','analitik')

