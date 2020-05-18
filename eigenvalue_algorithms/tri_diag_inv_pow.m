function [mu, x] = tri_diag_inv_pow(A, x, tol, maxIter)
    iter = 1;
    [~, p] = max(x);
    x = x/x(p);
    while iter < maxIter
        % y = A*x; old
        y = thomas(A,x);
        mu = y(p);
        [~, p] = max(x);
        if y(p) == 0
            error("eigenvalue was zero. Restart with new x")
        end
        err = norm(x - y/y(p));
        x = y/y(p);
        if err < tol
            % disp(iter)
            mu = 1/mu;
            break
        end
        iter = iter + 1;
        if iter == maxIter
            mu = 1/mu;
            break
        end
    end