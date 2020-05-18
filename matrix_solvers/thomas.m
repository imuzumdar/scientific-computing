function x = thomas(A,b)
    n = length(b);
    x = zeros(n,1);
    c_ = zeros(n-1,1);
    d_ = zeros(n,1);
    
    % modifying coefficient matrix values
    c_(1) = A(1,2)/A(1,1);
    d_(1) = b(1)/A(1,1);
    
    for i=2:(n-1)
        c_(i) = A(i,i+1)/(A(i,i) - A(i,i-1)*c_(i-1));
        d_(i) = (b(i) - A(i,i-1)*d_(i-1))/(A(i,i) - A(i,i-1)*c_(i-1));
    end
    
    d_(n) = (b(n) - A(n,n-1)*d_(n-1))/(A(n,n) - A(n,n-1)*c_(n-1));
    
    %back substitution
    x(n) = d_(n);
    for i=(n-1):-1:1
        x(i) = d_(i) - c_(i)*x(i+1);
    end
    