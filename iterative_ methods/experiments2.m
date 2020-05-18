options.MaxIter=20000;
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