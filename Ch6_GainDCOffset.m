N = 1000;
fs = 1000;
Ts = 1/fs;
t = [0:N-1]*Ts;

f1 = 20;
in = sin(2*pi*f1.*t);

g1 = 0.5; g2 = 2; mue1 = 1; mue2 = -0.5;
y1 = g1*in + mue1; y2 = g2*in + mue2;

figure(1); plot(t,in, 'black', t,y1,'red',t,y2,'blue'); title('Signals with Gain and Offsetr Calculated');
ylabel('y[n]'); xlabel('t[sec]'); legend('x1 = in', 'y1 = g1*x1 + {\mu1}','y2 = g2*x1 + {\mu2}'); grid on; 

figure(2); plot(in,in,'black--',in,y1,'red',in,y2,'blue'); title('Transfer Curves for Signals'); ylabel('y[n]'); xlabel('x[n]');
legend('x1 = in', 'y1 = g1*x1 + {\mu1}','y2 = g2*x1 + {\mu2}'); grid on; 
ax = gca; ax.XAxisLocation = 'origin'; ax.YAxisLocation = 'origin';


lalala;