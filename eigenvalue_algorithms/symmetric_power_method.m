function [mu, x] = symmetric_power_method(A, x, tol, maxIter)
    iter = 1;
    x = x/norm(x);
    while iter < maxIter
        y = A*x;
        mu = transpose(x)*y;
        if norm(y) == 0
            error("eigenvalue was zero. Restart with new x")
        end
        err = norm(x - y/norm(y));
        x = y/norm(y);
        if err < tol
            disp(mu)
            disp(iter)
            break
        end
        iter = iter + 1;
        disp(mu)
    end