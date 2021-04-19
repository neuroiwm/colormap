column  = 5;
row     = 15;
mat     = rand(row,column);

f = figure;
set(f,'Position',[440 378 420 420]);
pbaspect([1 1 1]);
imagesc(mat);
hold on;
for i_c = 1 : row+1
    plot([0 column+0.5],[i_c-0.5 i_c-0.5],'LineWidth',2,'Color','k');
end

for i_r = 1 : column+1
    plot([i_r-0.5 i_r-0.5],[0-0.5 row+0.5],'LineWidth',2,'Color','k');
end
axis off
% set(gcf,'Color','none');
% set(gca,'Color','none');
% set(gcf,'InvertHardcopy','off')
varlist={'jet';'hot';'bone';'gray';'copper';'cool'};
return
%%

for i_var = 1 : numel(varlist)
    eval(sprintf('colormap(%s)',varlist{i_var}));
    saveas(gcf,sprintf('img_%s',varlist{i_var}),'jpg');
end

%% original
w = [1 1 1];
b = [2	161	255]/255;

cmap = generateColormap([w;b],1,255);
colormap(cmap)