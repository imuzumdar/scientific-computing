% recursive-like function to find optimal omega
function [omega, num_iter] =find_best_omega(A,b,x0, options)

omega = zeros(72,1);
num_iter = zeros(72,1);
middle_omega = 1;
index = 1;

for i=1:4
    min_iter = 100000;
    opt_omega = 3; % random number choice. Doesn't matter for results
    for omega_val=(middle_omega - 9*10^(-i)):10^(-i):(middle_omega + 9*10^(-i))
            [var,iter]=SOR(A,b,omega_val,x0,options);
            omega(index) = omega_val;
            num_iter(index) = iter;
            if iter < min_iter
                min_iter = iter;
                opt_omega = omega_val;
            end
            index = index + 1;
    end
    middle_omega = opt_omega;
end
disp("-------")
disp(min_iter)
disp(opt_omega)
disp("-------")
end