Fs  = 1000;
N   = 100;
t   = 1/Fs : 1/Fs : 1;
f1  = 2;
f2  = 10;
sig = [cos(2*pi*f1*(repmat(t,[N,1])+pi*randn(N,1))).*sin(2*pi*f2*(repmat(t,[N,1])+pi*randn(N,1)))]';
sig = sig.*rand(1,size(sig,2));

%

%% conventional
figure;
a= plot(t,sig,'LineWidth',1);
%%
close all
try
    fig;
    setFig2(4,12);
    setPos_ppt(1);
    setLabel('Time [s]','test');
catch
    figure;
end
ylim([-1.5 1.5]);
[struct_line,func] = plot_bt(t,sig);
for i = 1 : N
    func(struct_line,i);
    pause(0.1)
end
%%


