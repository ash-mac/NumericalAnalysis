clc
clear all
close all
A = input("Enter 1st matrix:");
B = input("Enter 2nd matrix");
m = size(A);
n = size(B);
if(m==n)
    C = A + B;
    disp(C)
else
    disp("matrices are not of same dimension");
    %disp displays output on command window
    %sprintf stores output in a variable
    % sprintf is the same as FPRINTF except that it returns the data in a MATLAB variable rather than writing to a file.
    % C = A + B doesn't always give error when dimensions don't match
end
