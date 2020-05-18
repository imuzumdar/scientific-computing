options.MaxIter=10000;
A= @(theta)[theta -1 1; 1 theta -1; -1 1 theta];
b= @(theta)[theta;theta;theta];
x0=[0;0;0];
theta=2;
options.Tol=1e-5;
% x=Jacobi(A(theta),b(theta),x0,options)
disp("------------------------")
x=Gauss_seidel(A(theta),b(theta),x0,options)