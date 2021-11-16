%% commandWindow
close all
cw = comwin;
cw = cw.initialize;
cw.fprintf(datestr(now))
%% test
cw = cw.test;