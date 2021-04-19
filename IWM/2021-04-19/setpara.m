num_AA = cell(7,10);

num_AA{1,1} = '           ##   ';
num_AA{2,1} = '          ###   ';
num_AA{3,1} = '           ##   ';
num_AA{4,1} = '           ##   ';
num_AA{5,1} = '           ##   ';
num_AA{6,1} = '           ##   ';
num_AA{7,1} = '         ###### ';

num_AA{1,2} = '            #### ';
num_AA{2,2} = '         ##  ##  ';
num_AA{3,2} = '             ##  ';
num_AA{4,2} = '           ###   ';
num_AA{5,2} = '          ##     ';
num_AA{6,2} = '         ##  ##  ';
num_AA{7,2} = '         ######  ';

num_AA{1,3} = '          ####   ';
num_AA{2,3} = '         ##  ##  ';
num_AA{3,3} = '             ##  ';
num_AA{4,3} = '           ###   ';
num_AA{5,3} = '             ##  ';
num_AA{6,3} = '         ##  ##  ';
num_AA{7,3} = '          ####   ';

num_AA{1,4} = '            ###  ';
num_AA{2,4} = '           ####  ';
num_AA{3,4} = '          ## ##  ';
num_AA{4,4} = '         ##  ##  ';
num_AA{5,4} = '        #######  ';
num_AA{6,4} = '             ##  ';
num_AA{7,4} = '             ##  ';

num_AA{1,5} = '        ######     ';
num_AA{2,5} = '        ##         ';
num_AA{3,5} = '        #####      ';
num_AA{4,5} = '            ##     ';
num_AA{5,5} = '             ##    ';
num_AA{6,5} = '        ##  ##     ';
num_AA{7,5} = '         ####      ';

num_AA{1,6} = '           ###      ';
num_AA{2,6} = '          ##        ';
num_AA{3,6} = '         ##         ';
num_AA{4,6} = '         #####      ';
num_AA{5,6} = '         ##  ##     ';
num_AA{6,6} = '         ##  ##     ';
num_AA{7,6} = '          ####      ';

num_AA{1,7} = '         ######     ';
num_AA{2,7} = '         ##  ##     ';
num_AA{3,7} = '             ##     ';
num_AA{4,7} = '            ##      ';
num_AA{5,7} = '           ##       ';
num_AA{6,7} = '           ##       ';
num_AA{7,7} = '           ##       ';

num_AA{1,8} = '          ####      ';
num_AA{2,8} = '         ##  ##     ';
num_AA{3,8} = '         ##  ##     ';
num_AA{4,8} = '          ####      ';
num_AA{5,8} = '         ##  ##     ';
num_AA{6,8} = '         ##  ##     ';
num_AA{7,8} = '          ####      ';

num_AA{1,9} = '          ####      ';
num_AA{2,9} = '         ##  ##     ';
num_AA{3,9} = '         ##  ##     ';
num_AA{4,9} = '          #####     ';
num_AA{5,9} = '            ##      ';
num_AA{6,9} = '            ##      ';
num_AA{7,9} = '          ###       ';

num_AA{1,10} = '          ####  ';
num_AA{2,10} = '         ##  ## ';
num_AA{3,10} = '         ## ### ';
num_AA{4,10} = '         ###### ';
num_AA{5,10} = '         ### ## ';
num_AA{6,10} = '         ##  ## ';
num_AA{7,10} = '          ####  ';


sub_AA = cell(7,3);

sub_AA{1,1}= '  #####     ';
sub_AA{2,1}= ' ##   ##    ';
sub_AA{3,1}= ' #          ';
sub_AA{4,1}= '  #####     ';
sub_AA{5,1}= '      ##    ';
sub_AA{6,1}= ' ##   ##    ';
sub_AA{7,1}= '  #####     ';

sub_AA{1,2}= '           ';
sub_AA{2,2}= '           ';
sub_AA{3,2}= '##  ##     ';
sub_AA{4,2}= '##  ##     ';
sub_AA{5,2}= '##  ##     ';
sub_AA{6,2}= '##  ##     ';
sub_AA{7,2}= '######    ';

sub_AA{1,3}= '###       ';
sub_AA{2,3}= '##        ';
sub_AA{3,3}= '##        ';
sub_AA{4,3}= '#####     ';
sub_AA{5,3}= '##  ##    ';
sub_AA{6,3}= '##  ##    ';
sub_AA{7,3}= '######    ';





substr = cell(7,1);
%num_sub = size(sub_AA,2);
for i = 1 : size(sub_AA,1)
    substr{i} = sprintf('%s %s %s', sub_AA{i,1},sub_AA{i,2},sub_AA{i,3});
end