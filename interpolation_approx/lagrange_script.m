% lagrange polynomial
syms x;

roots_phi_1 = 3/5;
roots_phi_2 = [.2899 .8212];
roots_phi_3 = [.1647,.5499,.9008];		
roots_phi_4 = [.1051 .3762 .6989 .9373];	
roots_phi_5 = [.0727 .2695 .5331 .7869 .9569];

roots = {roots_phi_1, roots_phi_2, roots_phi_3, roots_phi_4, roots_phi_5};

for i=1:length(roots)
    root = roots{i};
    weight = zeros(1, i); % weights for phi_i
    for j=1:length(root)
        lagrange = 1;
        for k=1:length(root)
            if (k ~= j)
                lagrange = lagrange * (x-root(k))/(root(j)-root(k));
            end
        end
        w = int(lagrange*sqrt(x),x,0,1);
        weight(j) = w;
    end
    disp(weight)
end

    