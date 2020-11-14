%% main
%%%% referred
%%https://www.mathworks.com/matlabcentral/answers/2001-what-matlab-easter-eggs-do-you-know#answer_3188
addpath('..')
%%
f = image;
f = f.CData;
close
defImage = pow2(f,47);
imgCell = repmat({zeros(size(defImage))},8,7);
for i_shift = 0 : 52
    imgCell{i_shift+1} = bitshift(defImage,i_shift);
end
[row,column] = size(imgCell);
%%
figure; hold on;
for i_row = 1 : row
    for i_column = 1 : column
        s = column*(i_row-1) + i_column;
        a = subplot(row,column,s);
        f = imagesc(imgCell{i_row,i_column});
        hold on;
        tmpcol = [1,1,1;0,0,0];
        col_out = generateColormap(tmpcol);
        set(a,'Colormap',col_out);
        axis ij; axis off; 
        hold off
    end
end
set(gcf,'Position',[1,72,1680,883]);
%%
life