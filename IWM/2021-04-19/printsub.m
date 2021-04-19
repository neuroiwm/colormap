
function printsub(N)
setpara;
N_str   = num2str(N);
num_num = numel(N_str);
numstr  = cell(7,1);
for i = 1 : size(numstr,1)
    numstr{i} = eval(sprintf('[%s]',generateStr(num_num,N_str,i)));
end

for i = 1 : size(numstr,1);
    fprintf('%s',substr{i});
    fprintf('%s',numstr{i});
    fprintf('\n');
end

end


function tmp = generateStr(num_num,N_str,i)
tmp = [];
for i_num = 1 : num_num
    num = str2num(N_str(i_num));
    num(num==0) = 10;
    tmp = [tmp,sprintf('num_AA{%d,%d},',i,num)];
end
tmp = tmp(1:end-1);
end

%%