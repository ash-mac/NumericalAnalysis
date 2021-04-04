clc
clear all
A = input('Enter a Symmetric Matrix');
[m n] = size(A);
%checking for square matrix
if m ~= n
    disp('A is not a Square Matrix!');
    return
end
%checking for symmetric matrix
sym = 1;
for i = 2:n
    for j = 1:i-1
        if A(i,j)~=A(j,i)
            sym = 0;
            break;
        end
    end
end
if sym == 0
    disp('A is not Symmetric Matrix!')
    return
end
% finding maximum off diagonal matrix
maxiter = input('Enter number of iterations: ');
D = A;
iter = 0;
while(iter<maxiter)
    i = 1;
    j = 2;
    maxim = abs(D(i,j));
    for p = 1:n
        for q = p+1:n
            if maxim < abs(D(p,q))
                maxim = abs(D(p,q));
                i= p;
                j =q;
            end
        end
    end
    if(maxim == 0)
        break;
    end
    % finding rotation matrix
    if D(i,i) ~= D(j,j)
        theta = 0.5 * (atan((2*maxim)/(D(i,i) - D(j,j))));
    elseif maxim > 0
        theta = pi/4;
    else
        theta = -pi/4;
    end
    R1 = eye(n);
    R1(i,i) = cos(theta);
    R1(i,j) = -sin(theta);
    R1(j,i) = sin(theta);
    R1(j,j) = cos(theta);
    D = R1^(-1)*D*R1;
    iter = iter + 1;
end
D