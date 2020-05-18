function [mu, x] = inv_sym_power_method(A, x, tol, maxIter)
    iter = 1;
    x = x/norm(x);
    while iter < maxIter
        % y = B*x;
        y = linsolve(A,x);
        mu = transpose(x)*y;
        if norm(y) == 0
            error("eigenvalue was zero. Restart with new x")
        end
        err = norm(x - y/norm(y));
        x = y/norm(y);
        if err < tol
            % disp(iter)
            mu = 1/mu;
            break
        end
        iter = iter + 1;
        % disp(1/mu)
        if iter == maxIter
            mu = 1/mu;
            break
        end
    end