function [x,err] = levenberg_marquadt(r, x0, J, tol, maxIter, lambda)
    err = [];
    iter = 0;
    x = x0;
    while iter < maxIter
        A = J(x);
        mat = transpose(A) * A;
        Matrix = mat + lambda*diag(diag(mat));
        b = transpose(-A) * r(x);
        v = linsolve(Matrix, b);
        x = x + transpose(v);
        err_1 = norm(x - x0);
        err = [err,err_1];
        if norm(x - x0) < tol
           return
        end
        iter = iter + 1;
        x0 = x;
    end
    disp("reached max number of iterations")
end