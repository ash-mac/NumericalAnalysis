clc
clear all
close all
A = input('Enter the coeffiecient matrix:');
b = input('Enter the vector b:');
C = [A b];% or use [2,A,b]
n = size(A,2);
x = zeros(1,n);
ra = rank(A);
rc = rank(C);
flag = 0;
if ra==rc
    if ra<n
        disp('infinite solution\n');
    else
        flag = 1;
    end
else
    disp('no solution\n');
end

disp('Here')
if flag == 1
    col = n;
    row = n;
    terminate = 0;
    for i = 1:col - 1
        for j = i+1:row
            if abs(C(j,i)) >= abs(C(i,i))
                C([j i],:) = C([i j],:);
            end
            if (C(i,i)) ~=0
                lambda = C(j,i)/C(i,i);
                C(j,:) = C(j,:) - lambda*C(i,:);
            else
                disp('Gauss Elimination not Applicable')
                terminate = 1;
                break;
            end            
        end
        if terminate == 1
            break;
        end
    end
    x(n) = C(n,n + 1)/C(n,n);
        for k = n-1:-1:1
            sum = 0;
            for j = k+1:n
                sum = sum + C(k,j) * x(j);
            end
            x(k) = (C(k,n+1) - sum)/C(k,k);
        end
        disp(x);
end
