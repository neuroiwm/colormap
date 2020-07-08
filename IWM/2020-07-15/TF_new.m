open('2_backup_1022_TF.fig')
setFig2(2,15);
addpath('..')
mb = [49 100 154]/255;
mr = [123 21 18]/255;
w = [1 1 1];
col = [mr;w];
col_out1 = generateColormap(col,1,25); 
col = [w;mb];
col_out2 = generateColormap(col,1,25); 
col_out1 = flipud(col_out1);
col_out = [col_out2 ;repmat(w,[size(col_out2,1)/1,1]); col_out1];
colormap(col_out);
setCB(1,15,5);
setPos(2)

