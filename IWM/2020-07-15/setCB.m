function cb = setCB(num_case,size_font,N)
labelName={'ERSP, %';'t-value';'ERSP [dB]'};
getN = [50,15,5,NaN];
if ~exist('num_case','var')
    num_case = 3;
elseif isempty(num_case)
    num_case = 3;
elseif ischar(num_case)
    label_cb = num_case;
    num_case = 4;
end

if ~exist('N','var')
    N = getN(num_case);
elseif isempty(N)
    N = getN(num_case);
end

if ~exist('size_font','var')
    size_font = 24;
elseif isempty(size_font)
    size_font = 24;
end
size_font = ceil(size_font*35/19);
cb = colorbar;
set(cb,'FontSize',size_font);
if num_case ~= 4
    caxis([-N N])
    set(cb,'Fontweight','bold',...
        'Ticks',linspace(-N,N,5));
    ylabel(cb,labelName{num_case,1},'FontWeight','bold','Fontsize',size_font)
else
    caxis([-N N])
    ylabel(cb,label_cb,'FontWeight','bold','Fontsize',size_font)
end
end