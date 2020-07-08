function setPos(num_case)
if ~exist('num_case','var')
    num_case = 2;
elseif isempty(num_case)
    num_case = 2;
end
try
switch num_case
    case 1
        %%% large
        set(gcf,'Position',[1  1   1858   1003]);
    case 2
        %%% TF,Topo
        set(gcf,'Position',[680   296   898   682]);
    case 3
        %%% middle
        set(gcf,'Position',[8 172 953 747]);
    case 4
        %%% for Presentation
        set(gcf,'Position',[680 467 1112 461]);
    
end
catch
        set(gcf,'Position',num_case);
end

end