A = [4  1   1  1; 1  3 -1 1; 1 -1  2  0; 1  1   0  2];
x0 = [1; 0; 0; 0];
tol = 1e-5;
maxIter = 1000;

[mu1, x1] = power_method(A, x0, tol, maxIter);
[mu2, x2] = symmetric_power_method(A, x0, tol, maxIter);
[mu3, x3] = inv_sym_power_method(A, x0, tol, maxIter);

% a = [2, 1, 1; 1, 2, 1; 1, 1, 2];
% x0 = [1; -1; 2];
% maxIter = 3;
% power_method(a, x0, tol, maxIter);
