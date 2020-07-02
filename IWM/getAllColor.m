%%
ccclose;
DateDir = dir('*-*');
num_dir = numel(DateDir);
tbl_col = [];
origFolder = cd;
for i_dir = 1 : num_dir
    cd(DateDir(i_dir).name);
    Files = dir('*m');
    num_file = numel(Files);
    for i_file = 1 : num_file
        clear col 
        try
            run(Files(i_file).name)
        catch
            
        end
        
        if exist('col','var')
            tbl_col(end+1:end+size(col,1),:) = col;
        end
    end
    close all
    cd(origFolder);
end
figure;
imagesc([1:size(tbl_col)],[1:size(tbl_col)],[1:size(tbl_col)]);
colormap(tbl_col)