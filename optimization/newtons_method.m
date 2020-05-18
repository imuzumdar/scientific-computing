function [x,err] = newtons_method(r, x0, J, tol, maxIter)
    err = [];
    iter = 0;
    x = x0;
    while iter < maxIter
        A = J(x);
        mat = transpose(A) * A;
        b = transpose(-A) * r(x);
        v = linsolve(mat, b);
        x = x + transpose(v);
        err_1 = norm(x - x0);
        err = [err,err_1];
        if err_1 < tol
           break
        end
        iter = iter + 1;
        x0 = x;
    end
    disp("reached max number of iterations")
end