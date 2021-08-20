classdef vi
    methods (Static) 
        function pairwiseplot(in,x)
            if nargin < 2
                x = 1 : size(in,2);
            end
            plot(x,in','LineWidth',1.5,'Color','k');
        end
        
        function pairwiseplot_nbp(nbp,k)
            if nargin < k
                k  = 0.5;
            end
            num_box = numel(nbp);
            x = [];
            y = [];
            for i_box = 1 : num_box
                x =[x;nbp(i_box).data.XData];
                y =[y;nbp(i_box).data.YData];
            end
            l = plot(x,y,'LineWidth',1.5,'Color',ones(1,3)*k);
            for i_lin = 1 : numel(l)
                vi.offLegend(l(i_lin));
            end
        end
        
        function offLegend(h)
            hAnnotation = get(h,'Annotation');
            hLegendEntry = get(hAnnotation,'LegendInformation');
            set(hLegendEntry,'IconDisplayStyle','off')
        end
    end
    
    methods (Static)
        function modnbp(nbp,pointsz,colorMat)
            if ~exist('pointsz','var')
                pointsz = 12;
            end
            config_color;
            num_col = size(col4,2);
            flag_col = 1;
            if exist('colorMat','var')
                num_col = size(colorMat,2);
                flag_col = 2;
            end
            Fnames = fieldnames(nbp);
            for i = 1 : numel(nbp)
                nbp(i).sdPtch.FaceColor = [0.5 0.5 0.5];
                nbp(i).sdPtch.EdgeColor = [0.5 0.5 0.5];
                nbp(i).semPtch.FaceColor = [0.65 0.65 0.65];
                nbp(i).semPtch.EdgeColor = [0.65 0.65 0.65];
                nbp(i).mu.Color  = [0 0 0];
                switch flag_col
                    case 1
                        nbp(i).data.MarkerFaceColor  = col4(:,mod(i,num_col)+1);
                        nbp(i).data.MarkerEdgeColor  = col4(:,mod(i,num_col)+1);
                    case 2
                        nbp(i).data.MarkerFaceColor  = colorMat(:,min(i,size(colorMat,2)));
                        nbp(i).data.MarkerEdgeColor  = colorMat(:,min(i,size(colorMat,2)));
                end
                nbp(i).data.MarkerSize  = pointsz;
                
                for j = 1 : 3
                    hAnnotation = eval(["get(nbp(i)."+string(Fnames{j,1})+",'Annotation');"]);
                    hLegendEntry = get(hAnnotation,'LegendInformation');
                    set(hLegendEntry,'IconDisplayStyle','off')
                end
            end
            hold on;
        end
        
        function setFig(size_font) 
            if nargin < 1
                size_font = 10;
            end
            fd = 'Arial';
            box('on');
            size_font = ceil(size_font*35/19);
            set(gca,'FontWeight','bold');
            set(gca,'Fontsize',size_font,'FontName',fd);
            set(gca,'linewidth',1);
            set(gcf,'color',[1 1 1]);
        end
    end
    methods (Static)
        function ax = bringFront_nbp(ax)
            if nargin < 2
                ax = gca;
            end
            child       = ax.Children;
            obj_scatter = findobj('LineStyle','none');
            idx_scatter = [];
            for i_child = 1 : numel(obj_scatter)
                idx_scatter = [idx_scatter,(child == obj_scatter(i_child))];
            end
            idx_scatter = logical(sum(idx_scatter,2));
            ax.Children = [child(idx_scatter);child(~idx_scatter)];
            
        end
        
        function ax = bringBack_nbp(ax)
            if nargin < 2
                ax = gca;
            end
            child       = ax.Children;
            obj_patch = findobj('Type','Patch');
            idx_patch = [];
            for i_child = 1 : numel(obj_patch)
                idx_patch = [idx_patch,(child == obj_patch(i_child))];
            end
            idx_patch   = logical(sum(idx_patch,2));
            ax.Children = [child(~idx_patch);child(idx_patch)];
        end
    end
    
    
    
end