function [a,b,c] = myfunction(x,y,z)
    a = x^2 + sin(z) - log(y);
    b = y*z + cos(x) - exp(y);
    c = x^2*y*z + x*sin(y);
end