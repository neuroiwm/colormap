close all
fsz     = 12;
dispPos = get(groot,'MonitorPositions');
dispPos = [dispPos(1), dispPos(2), 600 300];
com     = figure('Position',dispPos,'MenuBar','none','ToolBar','none','Color',[0 0 0]);
axis off
xlim([0 1]);
ylim([0 1]);
tx      = text(0,0,'>>','FontSize',fsz,'Color','w');
dt      = 0.05;
tx_max  = 1/0.05;
tx_all  = tx;
for i = 1 : tx_max-1
    y = dt*i;
    tx_all = [text(0,y,'','FontSize',fsz,'Color','w'),tx_all];
end
%%

for i = 1 : 10
    for j = 1 : tx_max-1
        tx_all(j).String = tx_all(j+1).String;
    end
     tx_all(end).String = sprintf('hoge%02d',i);
     pause(0.1)
end
