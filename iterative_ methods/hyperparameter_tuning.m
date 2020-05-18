options.Tol=1e-10;
options.MaxIter=1000;
omega = .1:.1:1.9;

A = build_matrix(1,1,1,1000);
b = ones(1000,1);
x0 = zeros(1000,1);
for omega_index=1:length(omega)
    disp(omega(omega_index))
    [var,residual]=SOR(A,b,omega(omega_index),x0,options);
    disp(residual)
end
