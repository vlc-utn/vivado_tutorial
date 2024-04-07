function [y1, y2, y3] = my_fun(x1, x2, x3)
    y1 = x1*x2*x3;
    y2 = x1+x2+x3;
    y3 = sqrt(y1+y2);
end