function [struct_line,func] = plot_bt(x,y)
gr          = [0.8 0.8 0.8]; 
num_line    = size(y,2);
struct_line = struct;
lines       = plot(x,y);
colors_orig = cat(1,lines(:).Color);

struct_line.color = colors_orig;
struct_line.line  = lines;
struct_line.gr    = gr;
struct_line.num_line = num_line;
struct_line.objList  =1:num_line;
func = @changeLineCol;
    function struct_line=changeLineCol(struct_line,linenum)
        for i = 1 : struct_line.num_line
        struct_line.line(i).Color     = struct_line.gr;
        struct_line.line(i).LineWidth = 1;
        end
        objList   = struct_line.objList;
        struct_line.line(objList == linenum).Color = struct_line.color(objList == linenum,:);
        struct_line.line(objList == linenum).LineWidth = 2;
        oblist  = struct_line.line;
        newh    = [oblist(objList == linenum);oblist(objList ~= linenum)];
        set(gca,'Children',newh);
        struct_line.objList = [objList(objList == linenum),objList(objList ~= linenum)];
        struct_line.line = newh;
    end
end