% script to perform all necessary gaussian elimination and gaussian 
% elimination with partial pivoting
n = [10,100,1000];

for i=1:3
    A = build_matrix(1,4,1,n(i));
    b = ones(n(i),1);
    x = gaussian_elimination(A,b);
    z = gaussian_elimination_partial_pivoting(A,b);
    disp(x)
    disp(z)
    disp(x-z)
end

for i=1:3
    A = build_matrix(-1,2,-1,n(i));
    b = ones(n(i),1);
    x = gaussian_elimination(A,b);
    z = gaussian_elimination_partial_pivoting(A,b);
    disp(x)
    disp(z)
    disp(x-z)
end

for i=1:3
    A = build_matrix(-1,2,-1,n(i));
    b = ones(n(i),1);
    x = gaussian_elimination(A,b);
    z = gaussian_elimination_partial_pivoting(A,b);
    disp(x)
end

for i=1:3
    A = build_matrix(1,1,1,n(i));
    b = ones(n(i),1);
    x = gaussian_elimination(A,b);
    z = gaussian_elimination_partial_pivoting(A,b);
    disp(x)
    disp(z)
    disp(x-z)
end