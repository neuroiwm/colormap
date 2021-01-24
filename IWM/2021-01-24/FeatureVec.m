column  = 20;
row     = 10;
mat     = rand(row,column);

figure;
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

varlist={'jet';'hot';'bone';'gray';'copper'};
for i_var = 1 : numel(varlist)
    eval(sprintf('colormap(%s)',varlist{i_var}));
    saveas(gcf,sprintf('img_%s',varlist{i_var}),'jpg');
end
