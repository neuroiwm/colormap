function col_out = whiten(col_out)
num_step = size(col_out,1);
num_rm = ceil(num_step/15);
num_mid = ceil(num_step/2);
col_out(num_mid-num_rm:end-num_mid+num_rm,:) = 1;
end