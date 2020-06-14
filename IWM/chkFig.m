function chkFig(col_out)
f = image;
f = f.CData;
clf
imagesc(f);
colormap(col_out); axis ij; axis off; colorbar
end

%%
