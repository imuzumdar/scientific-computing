function y = tri_diag_mult(A,x)
    n = length(x);
    c = diag(A,1);
    a = diag(A,-1);
    b = diag(A);
    y = zeros(n,1);
    
    y(1) = b(1)*x(1) + c(1)*x(2);
    for i=2:(n-1)
        y(i) = a(i-1)*x(i-1) + b(i)*x(i) + c(i)*x(i+1);
    end
    y(n) = a(n-1)*x(n-1) + b(n)*x(n);