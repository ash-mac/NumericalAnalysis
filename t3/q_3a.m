clc
clear all
close all
A = input('Eter the coeffiecient matrix:');
b = input('Enter the vector b:');
C = [A b];% or use [2,A,b]
dim = size(A,2);
ra = rank(A);
rc = rank(C);
flag = 0;
if ra==rc
    if ra<dim
        disp('infinite solution\n');
    else
        flag = 1;
    end
else
    disp('no solution\n');
end
if flag == 1
    row = size(A,1);
    col = size(A,2);
    for i = 1:col-1 % assuming C(i,i) ~= 0
        for j = i+1:row
            if abs(C(j, i)) >= abs(C(i, i))
                C([j, i], :) = C([i, j], :)
            end
            lambda = 0;
            if C(i,i) ~= 0
                lambda = C(j, i)/C(i, i)
                C(j,:)=C(j,:)-lambda*C(i,:);
            else
                display('Gauss eli not possible\n');
            end
        end
    end
    n = row;
    x = zeros(n,1);
    x(n) = C(n,n+1)/C(n,n);

    for k=n-1:-1:1
        sum=0;
        for j=k+1:n
        sum=sum+C(k,j)*x(j);
        end
        x(k)=(C(k,n+1)-sum)/C(k,k);
    end
    x
end
 
