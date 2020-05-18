% script to take on all iterative components
n = [10,100,1000];
options.Tol=1e-10;
options.MaxIter=300000;

% problem 1
for i=1:3
    A = build_matrix(1,4,1,n(i));
    b = ones(n(i),1);
    x0 = zeros(n(i),1);
    x=Jacobi(A,b,x0,options);
    disp("------------------------")
    y=Gauss_seidel(A,b,x0,options);
    disp("----")
end

% problem 2
% first we solve the problem for n=10 and n=100
for i=1:2
    A = build_matrix(-1,2,-1,n(i));
    b = ones(n(i),1);
    x0 = zeros(n(i),1);
    x=Jacobi(A,b,x0,options);
    disp("------------------------")
    y=Gauss_seidel(A,b,x0,options);
    disp("----")
end

% Still problem 2
% we separate the case for n=400 because we change the tolerance
options.Tol=1e-2;
A = build_matrix(-1,2,-1,400);
b = ones(400,1);
x0 = zeros(400,1);
x=Jacobi(A,b,x0,options);
disp("------------------------")
y=Gauss_seidel(A,b,x0,options);
disp("----")


% problem 3
for i=1:3
    A = build_matrix(1,1,1,n(i));
    b = ones(n(i),1);
    x0 = zeros(n(i),1);
    x=Jacobi(A,b,x0,options);
    disp("------------------------")
    y=Gauss_seidel(A,b,x0,options);
    disp("----")
end


% SOR calculations for various problems

% problem 1
for i=1:3
    A = build_matrix(1,4,1,n(i));
    b = ones(n(i),1);
    x0 = zeros(n(i),1);
    [omega, num_iter] = find_best_omega(A,b,x0,options);
    plot(omega, num_iter);
end

% problem 2
options.MaxIter=10000;
n = [10,100,400]; % change n to achieve convergence
for i=3:3
    A = build_matrix(-1,2,-1,n(i));
    b = ones(n(i),1);
    x0 = zeros(n(i),1);
    if i==3
        options.Tol=1e-2;
    end
    [omega, num_iter] = find_best_omega(A,b,x0,options);
    plot(omega, num_iter);
end

n = [10,100,1000]; %revert back to old n

% problem 3
for i=1:3
    A = build_matrix(1,1,1,n(i));
    b = ones(n(i),1);
    x0 = zeros(n(i),1);
    [omega, num_iter] = find_best_omega(A,b,x0,options);
    plot(omega, num_iter);
end