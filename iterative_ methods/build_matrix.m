% function used to build matrix of desired form
function A = build_matrix(a,b,c,n)
    A = zeros(n);
    for i=1:n
        A(i,i) = b;
    end
    for i=1:(n-1)
        A(i+1,i) = a;
        A(i,i+1) = c;
    end
end
    