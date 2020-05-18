function [lambda,Q] = cuppen(T)
    if all(size(T)== [1,1])
        disp("reached base case!")
        lambda = T;
        Q = 1;
        return 
    else
        m = floor(length(T)/2);
        n = length(T);
        beta = T(m+1,m);
        
        T1 = T(1:m,1:m);
        T1(m,m) = T1(m,m) - abs(beta);
        disp("T1")
        disp(T1)

        T2 = T(m+1:n,m+1:n);
        T2(1,1) = T2(1,1) - abs(beta);
        disp("T2")
        disp(T2)
                
        [lambda1, Q1] = cuppen(T1);
        [lambda2, Q2] = cuppen(T2);
        
        D = diag([diag(lambda1);diag(lambda2)]);
        disp("D")
        disp(D)
        disp("Q1")
        disp(Q1)
        disp("Q2")
        disp(Q2)
        z = transpose([Q1(length(Q1),:), Q2(1,:)]);
        disp("z")
        disp(z)
        
        disp("RANK ONE MATRIX")
        disp(D + z*transpose(z))
        [Q_, lambda] = eig(D + beta*z*transpose(z));
        % [Q_, lambda] = eig(D,z); using deflation method
        
        q_12 = zeros(n);
        q_12(1:m,1:m) = Q1;
        q_12(m+1:n,m+1:n) = Q2;
        disp("q_12")
        disp(q_12);
        
        disp("Q_")
        disp(Q_)
        
        disp("lambda")
        disp(lambda)
        
        Q = q_12*Q_;
        disp("Q")
        disp(Q)
        return
    end
    
    
    
    