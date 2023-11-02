fs = 48000;
Ts = 1/fs;
T = 1;
N = T/Ts;

t = [0:N-1]*Ts;
f1 = 440;
A1 = .35; 

x1 = A1*sin(2*pi*f1.*t);
sound(x1,fs);
pause(1.07);

f2 = 2*f1;
A2 = .7;
x2 = A2*sin(2*pi*f2.*t);
%sound(x2,fs);

%pause(1.07);
des_RMS = ((1/N)*sum(x1.^2)).^(1/2)
a = ((N*(des_RMS.^2))/sum(x2.^2)).^(1/2)

y2 = a*x2;
y2_rms = ((1/N)*sum(y2.^2)).^(1/2)
sound(y2,fs);
plot(t(1:100),x2(1:100),'black--',t(1:100),y2(1:100),t(1:100),x1(1:100),'blue--'); grid on; legend('x2','y2','x1');
xlabel('n/Ts[samples]'); title('y_2 = scaling of x_2 to get the desired RMS: x_1 rms'); axis('tight'); xticklabels([0:.2:2]);