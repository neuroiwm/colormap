close all
Fs = 1000;

colors = ...
[0	190	170;...
64	0	130	;...
236	156	4	;...
15	76	129	;...
237	102	99	;...
255	163	114 ;...
254	52	110	;...
]/255;

colors  = colors';
num_col = size(colors,2);
t = 1/Fs: 1/Fs: 15;
for i = 1 : 15
    x = cos(2*pi*0.1*t+rand(15,1))';
    x = rand(size(x,1),15) .* x;
    figure;
    plotMat(x,colors(:,mod(i,7)+1),Fs);
    setFigure(12)
end
screenShot;

function plotMat(tmpPow,Linecolor,fs)
%%
%%% mat: [data, trl] 
if ~exist('Linecolor','var')|| isempty(Linecolor)
    Linecolor = [0,150,136]/255;
end

if ~exist('fs','var')
    fs = 1;
end

b  = std(tmpPow,[],2);
t2 = 1/fs : 1/fs: size(tmpPow,1)/fs;
ar1 = area(t2,[mean(tmpPow,2)-b,  2*b]);
hold on;
lin = plot(t2,mean(tmpPow,2),'Color',Linecolor,'LineWidth',2);
% Appearances
set(ar1(1),'FaceColor','None','EdgeColor','none')
set(ar1(2),'FaceColor',Linecolor,'FaceAlpha',0.2,'EdgeColor','none');
% Legend
for i = 1 : 2
hAnnotation = get(ar1(i),'Annotation');
hLegendEntry = get(hAnnotation,'LegendInformation');
set(hLegendEntry,'IconDisplayStyle','off')
end
end

function setFigure(size_font)
Font_def = 'Arial';
set(groot,'defaultAxesFontName',Font_def);
set(groot,'defaultTextFontName',    Font_def);
set(groot,'defaultLegendFontName',  Font_def);
set(groot,'defaultColorbarFontName',Font_def);
size_font = ceil(size_font*35/19);
box('on')
set(gca,'FontWeight','bold');
set(gca,'Fontsize',size_font,'FontName',Font_def);
set(gca,'linewidth',2)
end

