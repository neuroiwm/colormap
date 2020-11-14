
function plotMat(tmpPow,cole,fs)
%%
%%% mat: [data, trl] 
if exist('cole','var') ~= 1 || isempty(cole)
    colorPalette;
    cole = col(:,1);
end

if ~exist('fs','var')
    fs = 1;
end

b  = nanstd(tmpPow,[],2);
t2 = 1/fs : 1/fs: size(tmpPow,1)/fs;
ar1 = area(t2,[nanmean(tmpPow,2)-b,  2*b]);
hold on;
lin = plot(t2,nanmedian(tmpPow,2),'Color',cole,'LineWidth',2);
% Appearances
set(ar1(1),'FaceColor','None','EdgeColor','none')
set(ar1(2),'FaceColor',cole,'FaceAlpha',0.2,'EdgeColor','none');
% Legend
for i = 1 : 2
hAnnotation = get(ar1(i),'Annotation');
hLegendEntry = get(hAnnotation,'LegendInformation');
set(hLegendEntry,'IconDisplayStyle','off')
end
end