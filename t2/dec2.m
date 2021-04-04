clc
clear all
close all
x = (input('enter number:'));
num = x;
ans = [];
i = 1;
while num>0
    ans(i) = mod(num,2);
    i = i+1;
    num = floor(num/2);
end
if size(ans) == 0
    display(0)
else
    display(flip(ans,2))
end
%***************************************************************
ansoct = [];
j = 1;
num2 = x;
while num2>0
    ansoct(j) = mod(num2,8);
    j = j+1;
    num2 = floor(num2/8);
end
sprintf('octal rep is as follows :')
if size(ansoct) == 0
    display(0)
else
    display(flip(ansoct,2))
end
%***************************************************************
num3 = x;
k = 1;
aa = string;
while num3>0
    aak = mod(num3,16);
    if aak==10
        aa = aa + 'A';
    elseif aak == 11
        aa = aa + 'B';
    elseif aak == 12
        aa = aa + 'C';
    elseif aak == 13
        aa = aa + 'D';
    elseif aak == 14
        aa = aa + 'E';
    elseif aak == 15
        aa = aa + 'F';
    else
        aa = aa + string(aak);
    end
    k = k+1;
    num3 =  floor(num3/16);
end
sprintf('hexa rep is as follows :')
if size(aa) == 0
    display(0);
else
    display(reverse(aa))
end
    
