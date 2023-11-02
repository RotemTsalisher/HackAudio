load 'Ch6SignalParams';
f1 = 1;
x1 = sin(2*pi*f1.*t);

[Apeak,I] = max(abs(x1));
App = max(x1)-min(x1);
Arms = ((1/N)*sum(x1.^2))^(1/2);
CF = Apeak/Arms;

picxoffset = 725; picyoffset = .11;
figure(1);plot(t,x1,'black'); yline(Arms, 'black--'); grid on;
ppx = 3875 + I; ppy = x1(I); annotation('doublearrow',[(ppx+picxoffset)/N (ppx+picxoffset)/N],[picyoffset ppy-.08])
px = I; py = x1(I); annotation('arrow',[px/N px/N], [0 py/N]);

x2 = 3.5*x1; x2_norm = x2/max(x2);
figure(2); plot(t,x2,t,x2_norm,'black--'); title('x = sin(2*{\pi}t)'); xlabel('n[samples]'); ylabel('x[n]'); grid on; legend('x2', 'x2 normalized');
ax = gca; ax.XAxisLocation = 'origin'; ax.YAxisLocation = 'origin';

p_db = -3; p = 10^(p_db/20);
x3 = p*(x2/max(x2));
figure(3); plot(t,x2,t,x3,'black--'); title('x normalized with factor p'); xlabel('n[samples]'); ylabel('x[n]'); grid on; legend('x2', 'x2 normalized with factor p');
ax = gca; ax.XAxisLocation = 'origin'; ax.YAxisLocation = 'origin';