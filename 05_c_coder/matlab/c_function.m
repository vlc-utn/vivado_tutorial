function [x1, x2, exitflag] = c_function(i)
    H = [1, -1; -1, 2];
    f = [-2; -6];
    A = [-1 0; 0 -1; 1 1; -1 2; 2 1];
    b = [0; 0; 2; 2; i];
    n = length(f);
    Aeq = zeros(0,n);
    beq = zeros(0,1);
    opt = mpcActiveSetOptions;
    iA0 = false(size(b));
    [x,exitflag] = mpcActiveSetSolver(H,f,A,b,Aeq,beq,iA0,opt);
    x1=x(1);
    x2=x(2);
end