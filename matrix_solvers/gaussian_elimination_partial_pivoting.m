% gaussian eliminatinon with partial pivoting
function x = gaussian_elimination_partial_pivoting(A,b)
    n = length(b);
    x = zeros(n,1);
    for i=1:(n-1)
        max_number=abs(A(i,i));
        max_row = i;
        for j=(i+1):n
            if abs(A(j,i))>max_number
                max_number=A(j,i);
                max_row=j;
            end
        end
        A([i, max_row], :) = A([max_row, i], :);
        b([i, max_row]) = b([max_row, i]);
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