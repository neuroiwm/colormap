function col_out = generateColormap(col,flag_int,n)
%% col_out = generateColormap(col[num_col,3])
if ~exist('n','var')
    n = 255;
end
num_col = size(col,1);
num_bin = n/num_col;
col_out = zeros(num_bin*num_col,3);
if ~exist('flag_int','var')
    flag_int = 1;
end
for i_col = 1 : num_col-1
    s = num_bin*(i_col-1)+1:num_bin*i_col;
    n = i_col;
    m = i_col+1;
    
    switch flag_int
        case 1
            x = linspace(col(n,1),col(m,1),num_bin);
            y = linspace(col(n,2),col(m,2),num_bin);
            z = linspace(col(n,3),col(m,3),num_bin);
        case 2
            x = logspace(col(n,1),col(m,1),num_bin);
            y = logspace(col(n,2),col(m,2),num_bin);
            z = logspace(col(n,3),col(m,3),num_bin);
            
    end
    col_out(s,:) = [x;y;z]';
end
col_out = unique(col_out,'rows');
switch flag_int
    case 1
    case 2
        mx = max(col_out,[],1);
        mn = min(col_out,[],1);
        for i_col =1 : size(col_out,2)
            col_out(:,i_col) = (col_out(:,i_col) - mn(i_col)) ./ (mx(i_col)-mn(i_col));            
        end
        col_out = bsxfun(@times,col_out,col(end,:));
end
col_out = col_out(2:end-1,:);
end