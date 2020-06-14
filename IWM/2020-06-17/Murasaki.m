%% main 
addpath('..')
col = [195, 106, 229;...
    24, 114, 228]/255; 
col_out = generateColormap(col);
chkFig(col_out);