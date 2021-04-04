clc
clear all
close all
A = input('Eter the coeffiecient matrix:')
b = input('Enter the vector b:')
C = [A,b]% or use [2,A,b]
dim = size(A,2);
ra = rank(A);
rc = rank(C);
if ra==rc
    if ra<dim
        display('infinite solution\n');
    else
    end
else
    display('no solution\n');
end
row = size(A,1);
col = size(A,2);
for k=1:col-1   
    temp = row;
    lambda = 0;
    for j=k+1:row   
        if C(k,k)~=0
            lambda=C(j,k)/C(k,k);
        else
            C([k,temp],:) = C([temp,k],:);
            lambda=C(j,k)/C(k,k);
            temp = temp - 1;
        end
      C(j,:)=C(j,:)-lambda*C(k,:);
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
 
