a = rand(40,1) * 15;
a = floor(mod(a,4))+1;
atgc = {'A';'T';'G';'C'};
for i = 1 : numel(a)
    fprintf('%s',atgc{a(i)});
end
fprintf('\n');
