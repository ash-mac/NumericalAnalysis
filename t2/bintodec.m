clc
clear all
close all
y = string(input('enter binary number :  '));
% convert string to char array
x = char(y);
len = strlength(x);
% ans stores the final answer
ans = 0;
for i = 1:len
    if x(i) == '1'
        ans = ans + 2.^(len - i);
    end
end
display(ans)