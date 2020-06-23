%% main
addpath('..')
col = [...
    61	199	240	;...
    46	182	126	;...
    222	9	77	;...
    236	179	50	;...
    ]/255;

figure; hold on;
for i_col = 1 : size(col,1)
    a = subplot(2,2,i_col);
    f = image;
    f = f.CData;
    f = imagesc(f);
    hold on;
%     tmpcol = [1,1,1;col(i_col,:)];
    tmpcol = [0,0,0;col(i_col,:)];
    col_out = generateColormap(tmpcol);
    set(a,'Colormap',col_out);
    axis ij; axis off; colorbar
    pbaspect([1 1 1])
    hold off
end

set(gcf,'Position',[1681, 654, 846, 778]);