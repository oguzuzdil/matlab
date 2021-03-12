clf
clear all
clc
t = 0:0.1:5;
x = 2*t-1;
subplot(221);plot(t,x,'r--');
xlabel('t'); ylabel('x'); title('x-t grafigi')
y = t.^3-8*t.^2+19*t-12;
subplot(222);plot(t,y,'b.');
xlabel('t'); ylabel('y'); title('y-t grafigi')
d = sqrt(x.^2+y.^2);
subplot(223);plot(t,d,'g-'); title('orijine olan uzaklýk')
subplot(224);plot(y,x,'k--');
xlabel('x'); ylabel('y'); title('x-y grafigi')
