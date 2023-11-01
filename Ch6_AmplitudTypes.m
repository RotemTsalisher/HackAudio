load 'Ch6SignalParams';
f1 = 1;
x1 = sin(2*pi*f1.*t);

[Apeak,I] = max(abs(x1));
App = max(x1)-min(x1);
Arms = ((1/N)*sum(x1.^2))^(1/2);
CF = Apeak/Arms;

picxoffset = 725; picyoffset = .11;
plot(t,x1,'black'); yline(Arms, 'black--');
ppx = I; ppy = x1(I); annotation('textarrow',[(ppx+picxoffset)/N (ppx+picxoffset)/N],[picyoffset ppy-.08])