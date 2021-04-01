clc
clear all
f = inline('x^(-3)- 5*x+ 1');
a0 = input('Enter a0:');
b0 = input('Enter b0:');
i = 1;
if(f(a0)*f(b0)<0)
    c0 = (a0 + b0)/2;
else
    disp('enter a decent interval for IVT to be valid');
end
c_old = 10;
diff = abs(c0-c_old);
while abs(diff) > 10^-4
    a1(i,1) = a0;b1(i,1)=b0;c1(i,1) = c0;iter(i,1)=i;d(i,1) = diff;
    if(f(a0) * f(c0)>0)
        a0 = c0;
    else
        b0 = c0;
    end
    c_old = c0;
    c0 = (a0 + b0)/2;
    diff = c0-c_old;
    i = i + 1;
end
T = table(iter,a1,b1,c1,d)