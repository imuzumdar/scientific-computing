% gaussian elimination algorithm function
function x = gaussian_elimination(A,b)
    n = length(b);
    x = zeros(n,1);
    for i=1:(n-1)
        for k=(i+1):n
            coefficient = A(k,i)/A(i,i);
            A(k,:) = A(k,:) - coefficient*A(i,:);
            b(k) = b(k) - coefficient*b(i);
        end
    end
    
    x(n) = b(n)/A(n,n);
    for i=(n-1):-1:1
        x(i) = (b(i) - dot(x((i+1):n),A(i,(i+1):n)))/A(i,i);
    end
end
    