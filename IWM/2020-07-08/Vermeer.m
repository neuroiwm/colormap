%% main
addpath('..')
col = [...
    247	214	152	;...
    127	111	85	;...
    81	81	87	;...
    53	72	98	;...
    105	140	180	;...
    ]/255;
comb_col = nchoosek((1:size(col,1)),2);
num_comb = size(comb_col,1);
tbl_col_out = zeros(126,3,num_comb);
figure; hold on;
for i_comb = 1 : num_comb
    a = subplot(4,ceil(num_comb/4),i_comb);
    hold on;
    tmpcol = col(comb_col(i_comb,:),:);
    sc = sum(tmpcol,2);
    [~,I] = sort(sc);
    tmpcol = tmpcol(I,:);
    f = image;
    f = f.CData;
    f = imagesc(f);
    hold on;
    col_out = generateColormap(tmpcol,2); %(end-20:end,:)
%     col_out = whiten(col_out);
    set(a,'Colormap',col_out);
    axis ij; axis off; colorbar
    pbaspect([1 1 1])
    hold off
end
set(gcf,'Position',[1681, 654, 846, 778]);
