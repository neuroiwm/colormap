function setFig2(num_case,vargin)

switch nargin
    case 2
        size_font = vargin;
    case 1
        size_font = 24;
    case 0
        size_font = 24;
end
if ~exist('num_case','var')
    num_case = 4;
elseif isempty(num_case)
    num_case = 4;
end
Font_def = 'Arial';
set(groot,'defaultAxesFontName',Font_def);
set(groot,'defaultTextFontName',    Font_def);
set(groot,'defaultLegendFontName',  Font_def);
set(groot,'defaultColorbarFontName',Font_def);
size_font = ceil(size_font*35/19);
box('on')
set(gca,'FontWeight','bold');
set(gca,'Fontsize',size_font,'FontName',Font_def);
set(gca,'linewidth',2)
if num_case == 1 
    %%% Amplitude-Time (2D) 
    xlabel('Time [s]');
    ylabel('Amplitude [É V]')
elseif num_case == 2 
    %%% imagesc_TF
    colormap('jet')
    xlabel('Time [s]')
    ylabel('Frequency [Hz]');
    axis xy
elseif num_case == 3 % imagesc_topo
    colormap('jet')
    axis xy
elseif num_case == 4 % PSD    
end


end