%% simulation of effort
%%% setPara
num_yr   = 1;
num_days = 365;
num_pos  = 1.01;
num_neg  = 0.99;
colorPalette;
col3 = col3(:,[2,1]);

%% bipolar
num_samp = num_days*num_yr;
tbl_samp = ones(num_samp,2);
for i_d = 2 : num_samp
    tbl_samp(i_d,1) = tbl_samp(i_d-1,1) * num_pos;
    tbl_samp(i_d,2) = tbl_samp(i_d-1,2) * num_neg;
end
%% stochastic
fig;
plot(tbl_samp(:,1),'Color',col3(:,1),'LineWidth',2);
plot(tbl_samp(:,2),'Color',col3(:,2),'LineWidth',2);
setFig2(4,12);
setLabel('Days','Ability');
num_iter  = 100;
ratio_day = 0.9:-0.1:0.1;
num_p     =  numel(ratio_day);    
tbl_samp_s = ones(num_samp,num_iter,num_p);
count_p = zeros(num_iter,num_p);
count_n = zeros(num_iter,num_p);
for i_p = 1 : num_p
for i_d = 2 : num_samp
    r = rand(num_iter,1);
    suf_p = find(r > ratio_day(i_p));
    tbl_samp_s(i_d,suf_p,i_p) = tbl_samp_s(i_d-1,suf_p,i_p) * num_pos;
    suf_n = find(r <= ratio_day(i_p));
    tbl_samp_s(i_d,suf_n,i_p) = tbl_samp_s(i_d-1,suf_n,i_p) * num_neg;
    count_p(suf_p,i_p) = count_p(suf_p,i_p) + 1;
    count_n(suf_n,i_p) = count_n(suf_n,i_p) + 1;
end
plotMat(tbl_samp_s(:,:,i_p),col4(:,min(7,i_p)));
end
leg = cell(num_p+2,1);
leg{1,1} = '毎日頑張る';
leg{2,1} = '毎日サボる';
for i_leg = 3 : num_p+2
    leg{i_leg,1} = sprintf('%d割サボる',ceil(10*ratio_day(i_leg-2)));
end
legend(leg)
xlim([0 num_samp])

