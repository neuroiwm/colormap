%% chgOrder_children
close all
n_box = 3;
testData = rand(20,n_box) .* linspace(1,0.4,n_box);

figure;
nbp = notBoxPlot(testData);
hold on;
vi.pairwiseplot_nbp(nbp,0.2);
vi.modnbp(nbp,8);
vi.setFig;
%%
ax = gca;
ax = vi.bringFront_nbp(ax);
ax = vi.bringBack_nbp(ax);