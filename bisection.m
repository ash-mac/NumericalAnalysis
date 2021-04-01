clc
clear all
f = inline('x^(-3)- 5*x+ 1');
a0 = input('Enter a0:');
b0 = input('Enter b0:');
while true
    if(f(a0)*f(b0)<0)
        c0 = (a0 + b0)/2;
        break;
    else
        disp('enter an interval for IVT to be valid');
    end
end
choice = input('Enter 1 for computing by bounds on epsilon, \nor\n 2 for computing by number of iterations.\n');
if(choice == 1)
    eps = input('Enter value of epsilon : ');
    c_old = b0;
    diff = abs(c0-c_old);
    i = 1;
    while abs(diff) > eps
        iteration(i,1)=i;a1(i,1) = a0;b1(i,1)=b0;c1(i,1) = c0;d(i,1) = diff;
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
    T = table(iteration,a1,b1,c1,d)
elseif(choice == 2)
    num_iter = input('Enter number of iterations : ');
    c_old = b0;
    diff = abd(c0-c_old);
    num = 0;
    while num<num_iter
        num = num + 1;
        iteration(num,1) =num; a1(num,1) = a0; b1(num,1) = b0;c1(num,1) = c0;d(num,1) = diff;
        if(f(a0) * f(c0)<0)
            a0 = c0;
        else
            b0 = c0;
        end
        c_old = c0;
        c0 = (a0 + b0)/2;
        diff = c0-c_old;
    end
    T = table(iteration,a1,b1,c1,d)
end
    