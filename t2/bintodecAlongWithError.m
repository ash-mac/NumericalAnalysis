clc
clear all
close all
y = string(input('enter binary number :  '));
% convert string to char array
x = char(y);
len = strlength(x);
% ans stores the final answer
ans = 0;
flag = 0;
for i = 1:len
    if x(i) == '1'
        ans = ans + 2.^(len - i);
    elseif x(i) == '0'
        ans = ans + 0;
    else
        sprintf('error : invalid binary string')
        flag = 1;
        break;
    end
end
if(flag==0)
    display(ans)
end