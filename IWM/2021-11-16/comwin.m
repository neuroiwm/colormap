classdef comwin
    properties
        win
        tx_all
       para
    end
    methods (Access = public)
        function cw = fprintf(cw,content)
            for j = 1 : cw.para.tx_max-1
                cw.tx_all(j).String = cw.tx_all(j+1).String;
            end
            cw.tx_all(end).String = content;
        end
    end
    
    methods (Access = public)
        
        function cw = comwin(dispID)
            if nargin < 2
                dispID = 1;
            end
            cw.para = struct; 
            cw.para.dispID = dispID;
        end
        
        function cw = initialize(cw,fsz)
            if nargin < 2                
                fsz     = 12;
            end
            cw.para.fsz = fsz;
            
            dispPos = get(groot,'MonitorPositions');
            dispPos = dispPos(cw.para.dispID,:);
            dispPos = [dispPos(1), dispPos(2), 600 300];
            cw.win  = figure('Position',dispPos,'MenuBar','none','ToolBar','none','Color',[0 0 0]);
            cw      = cw.setFig;
            tx      = cw.generateText(0,0,'>>');
            cw.para.dt      = 0.05;
            cw.para.tx_max  = 1/0.05;
            cw.tx_all       = tx;
            for i = 1 : cw.para.tx_max-1
                y         = cw.para.dt*i;
                cw.tx_all = [cw.generateText(0,y,' '),cw.tx_all];
            end
            
        end
        
        function tx = generateText(cw,x,y,content)
            tx = text(x,y,content,'FontSize',cw.para.fsz,'Color','w');
        end
        
        function cw = setFig(cw)
            figure(cw.win);
            axis off;xlim([0 1]);ylim([0 1]);
        end
        
    end
    
    methods (Access = public)
        function cw = test(cw)
            for i = 1 : cw.para.tx_max
                for j = cw.para.tx_max : 2
                    cw.tx_all(j).String = cw.tx_all(j-1).String;
                end
                cw.fprintf(sprintf('hoge%02d',i));
                pause(0.1);
            end
        end
    end
end