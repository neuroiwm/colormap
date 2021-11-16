%% commandWindow
close all
cw = comwin;
cw = cw.initialize;
cw.fprintf(datestr(now))
%% test
figure; uiwait(gcf);
cw = cw.test;