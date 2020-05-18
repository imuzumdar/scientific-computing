function [mu, x] = power_method(A, x, tol, maxIter)
    iter = 1;
    [~, p] = max(x);
    x = x/x(p);
    while iter < maxIter
        y = A*x;
        mu = y(p);
        [~, p] = max(x);
        if y(p) == 0
            error("eigenvalue was zero. Restart with new x")
        end
        err = norm(x - y/y(p));
        x = y/y(p);
        if err < tol
            % disp(mu)
            % disp(iter)
            break
        end
        iter = iter + 1;
        % disp(mu)
    end