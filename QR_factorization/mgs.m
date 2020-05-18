function [Q, R] = mgs(A)
    [n, m] = size(A);
    Q = zeros(n,m);
    R = zeros(n,n);
    for j=1:m
        y = A(:,j);
        for i=1:j-1
            R(i,j) = transpose(Q(:,i)) * y;
            y = y - R(i,j)*Q(:,i);
        end
        R(j,j) = norm(y);
        Q(:,j) = y/R(j,j);
    end