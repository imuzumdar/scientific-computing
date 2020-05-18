% PART 1
options.MaxIter=1000000;
A= @(theta)[theta -1 1; 1 theta -1; -1 1 theta];
b= @(theta)[theta;theta;theta];
x0=[0;0;0];

disp("theta = 3, tol = 10^-5")
options.Tol=1e-5;
theta=3;
x=Jacobi(A(theta),b(theta),x0,options)
disp("------------------------")
x=Gauss_seidel(A(theta),b(theta),x0,options)

disp("theta = 3, tol = 10^-10")
options.Tol=1e-10;
x=Jacobi(A(theta),b(theta),x0,options)
disp("------------------------")
x=Gauss_seidel(A(theta),b(theta),x0,options)

disp("theta = 2, tol = 10^-5")
options.Tol=1e-5;
theta=2;
x=Jacobi(A(theta),b(theta),x0,options)
disp("------------------------")
x=Gauss_seidel(A(theta),b(theta),x0,options)

disp("theta = 2, tol = 10^-10")
options.Tol=1e-10;
x=Jacobi(A(theta),b(theta),x0,options)
disp("------------------------")
x=Gauss_seidel(A(theta),b(theta),x0,options)

% PART 2
options.MaxIter=1000000;
options.Tol=1e-5;
A= @(delta)[1+delta -1 0; -1 2+delta -1; 0 -1 1+delta];
b= [-1;-1;2];
x0=[0;0;0];

disp("delta = 1")
delta = 1
x=Jacobi(A(delta),b,x0,options)
disp("------------------------")
x=Gauss_seidel(A(delta),b,x0,options)

disp("delta = 10^-1")
delta = 1e-1
x=Jacobi(A(delta),b,x0,options)
disp("------------------------")
x=Gauss_seidel(A(delta),b,x0,options)

disp("delta = 10^-2")
delta = 1e-2
x=Jacobi(A(delta),b,x0,options)
disp("------------------------")
x=Gauss_seidel(A(delta),b,x0,options)

disp("delta = 10^-3")
delta = 1e-3
x=Jacobi(A(delta),b,x0,options)
disp("------------------------")
x=Gauss_seidel(A(delta),b,x0,options)

disp("delta = 0")
delta = 0
x=Jacobi(A(delta),b,x0,options)
disp("------------------------")
x=Gauss_seidel(A(delta),b,x0,options)

% PART 3
options.MaxIter=1000000;
A= [10 1 1; 1 -10 1; 1 1 10];
b= [1;2;3];
x0=[0;0;0];

disp("w = 1.1, Tol = 10^-5")
options.Tol=1e-5;
omega=1.1;
x=SOR(A,b,omega,x0,options)

disp("w = 1.1, Tol = 10^-10")
options.Tol=1e-10;
omega=1.1;
x=SOR(A,b,omega,x0,options)

disp("w = 1.4, Tol = 10^-5")
options.Tol=1e-5;
omega=1.4;
x=SOR(A,b,omega,x0,options)

disp("w = 1.4, Tol = 10^-10")
options.Tol=1e-10;
omega=1.4;
x=SOR(A,b,omega,x0,options)

disp("w = 1.6, Tol = 10^-5")
options.Tol=1e-5;
omega=1.6;
x=SOR(A,b,omega,x0,options)

disp("w = 1.6, Tol = 10^-10")
options.Tol=1e-10;
omega=1.6;
x=SOR(A,b,omega,x0,options)

disp("w = 1.9, Tol = 10^-5")
options.Tol=1e-5;
omega=1.9;
x=SOR(A,b,omega,x0,options)

disp("w = 1.9, Tol = 10^-10")
options.Tol=1e-10;
omega=1.9;
x=SOR(A,b,omega,x0,options)

% PART 4
options.MaxIter=1000000;
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

