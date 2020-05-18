%normal eigenvalue problem
tol = 1e-10;
maxIter = 1000;

for k=1:8
    A = triDiag(10*2^(k));
    x0 = zeros(10*2^(k),1);
    x0(1)=1;
    disp("time 1")
    tic
    [mu1, x1] = inv_sym_power_method(A, x0, tol, maxIter);
    toc 

    c = diag(A,1);
    a = diag(A,-1);
    b = diag(A);
    
    disp("time 2")
    tic
    [mu2, x2] = tri_diag_inv_pow(A,x0,tol,maxIter);
    toc
    
    disp(mu1)
    disp(mu2)
    disp(min(eig(A)))
end