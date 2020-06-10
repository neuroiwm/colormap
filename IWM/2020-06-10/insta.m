%% insta ColorMap
close all
home
col = [254	218	117	;...
    250	126	31	;...
    214	41	119	;...
    150	47	192	;...
    79	91	213	]/255;
%%
num_bin = 16;
num_col = size(col,1);
col_out = zeros(num_bin*num_col,3);
for i_col = 1 : num_col-1
    s = num_bin*(i_col-1)+1:num_bin*i_col;
    n = i_col;
    m = i_col+1;
    x = linspace(col(n,1),col(m,1),num_bin);
    y = linspace(col(n,2),col(m,2),num_bin);
    z = linspace(col(n,3),col(m,3),num_bin);
    col_out(s,:) = [x;y;z]';
end
col_out = unique(col_out,'rows');
col_out = col_out(2:end-1,:);
%%
figure; image; colormap(col_out); axis ij; axis off; colorbar
