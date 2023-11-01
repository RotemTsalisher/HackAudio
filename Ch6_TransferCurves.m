N = 1000;
fs = 1000;
Ts = 1/fs;
t = [0:N-1]*Ts;

f1 = 1;
x1 = sin(2*pi*f1.*t);

y1 = x1;
y2 = 2*x1;
y3 = 3*x1;

figure(1);
plot(t,y1,'black',t,y2,'red--',t,y3, 'b--'); legend('y1 = x1','y2 = 2*x1','y3 = 3*x1');
title('Waveform of functions y1,y2,y3'); xlabel('t [sec]'); grid on; axis([0,1,-3.1,3.1]);

figure(2);
plot(x1,y1,'black--',x1,y2,'b',x1,y3,'r'); grid on; title('Transfer Curves');
xlabel('x[n]'); ylabel('y[n]'); legend('y1','y2','y3');
ax = gca;
ax.XAxisLocation = 'origin'; ax.YAxisLocation = 'origin';