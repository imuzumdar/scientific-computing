% PART 4
options.MaxIter=1000;
options.Tol=1e-5;

disp("n = 10")
n = 10;
R=rand(n); I=eye(n);b=rand(n,1);x0=zeros(n,1);

disp("lambda = 100")
lambda = 100;
A = R + lambda.*I;
x=Jacobi(A,b,x0,options)
disp("------------------------")
x=Gauss_seidel(A,b,x0,options)

disp("lambda = 10")
lambda = 10;
A = R + lambda.*I;
x=Jacobi(A,b,x0,options)
disp("------------------------")
x=Gauss_seidel(A,b,x0,options)




disp("n = 100")
n = 100;
R=rand(n); I=eye(n);b=rand(n,1);x0=zeros(n,1);

disp("lambda = 100")
lambda = 100;
A = R + lambda.*I;
x=Jacobi(A,b,x0,options)
disp("------------------------")
x=Gauss_seidel(A,b,x0,options)

disp("lambda = 10")
lambda = 10;
A = R + lambda.*I;
x=Jacobi(A,b,x0,options)
disp("------------------------")
x=Gauss_seidel(A,b,x0,options)


disp("n = 1000")
n = 1000;
R=rand(n); I=eye(n);b=rand(n,1);x0=zeros(n,1);

disp("lambda = 100")
lambda = 100;
A = R + lambda.*I;
x=Jacobi(A,b,x0,options)
disp("------------------------")
x=Gauss_seidel(A,b,x0,options)

disp("lambda = 10")
lambda = 10;
A = R + lambda.*I;
x=Jacobi(A,b,x0,options)
disp("------------------------")
x=Gauss_seidel(A,b,x0,options)