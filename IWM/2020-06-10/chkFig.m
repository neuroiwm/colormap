old = cd('..');
D = dir('*.fig');
for i_d = 1 : numel(D)
    open(D(i_d).name)
    colormap(col_out)
end
cd(old)

%%
figure;
surf(peaks)
colormap(col_out)