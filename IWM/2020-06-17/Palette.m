addpath('..');
mb = [49 100 154]/255;
mr = [193 61 58]/255;
col3 = [mb;mr]';
col = [[1,1,1];col3(:,1)'];
[col_out] = main(col);
col = [[1,1,1];col3(:,2)'];
[col_out2] = main(col);
% 
col_bi = [col_out;flipud(col_out2)];
chkFig(col_bi);
