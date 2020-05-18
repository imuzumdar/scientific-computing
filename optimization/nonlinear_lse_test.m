%textbook example
% 
% r = @(c)[c(1)*exp(-c(2)*(1-c(3))^2) - 3; c(1)*exp(-c(2)*(2-c(3))^2) - 5; 
%                 c(1)*exp(-c(2)*(2-c(3))^2) - 7; c(1)*exp(-c(2)*(3-c(3))^2) - 5; 
%                 c(1)*exp(-c(2)*(4-c(3))^2) - 1];
% 
% j_row = @(c,t)[exp(-c(2)*(t-c(3))^2), 
%                -c(1)*(t-c(3))^2 * exp(-c(2)*(t-c(3))^2), 
%                 2*c(1)*c(2)*(t-c(3)) * exp(-c(2)*(t-c(3))^2)];
%             
% J = @(c)[j_row(c,1);j_row(c,2);j_row(c,2);j_row(c,3);j_row(c,4)];
% 
% lambda=25;
% maxIter=10000000;
% tol=1e-5;
% x0=[1,1,1];
% lamdba = 0;
% 
% [newton_soluation_tb, err_nm] = newtons_method(r, x0, J, tol, maxIter);
% [lm_solution_tb, err_lm] = levenberg_marquadt(r, x0, J, tol, maxIter, 0);

%Honors Option Example
r = @(x)[sqrt((x(1)-15600)^2 + (x(2)-7540)^2 + (x(3)-20140)^2) - 299792.458*(.07074-x(4));
         sqrt((x(1)-18760)^2 + (x(2)-2750)^2 + (x(3)-18610)^2) - 299792.458*(.07220-x(4));
         sqrt((x(1)-17610)^2 + (x(2)-14630)^2 + (x(3)-13480)^2) - 299792.458*(.07690-x(4));
         sqrt((x(1)-19170)^2 + (x(2)-610)^2 + (x(3)-18390)^2) - 299792.458*(.07242-x(4))];

j_row = @(x,pos)[(x(1)-pos(1))/sqrt((x(1)-pos(1))^2 + (x(2)-pos(2))^2 + (x(3)-pos(3))^2)...
                 (x(2)-pos(2))/sqrt((x(1)-pos(1))^2 + (x(2)-pos(2))^2 + (x(3)-pos(3))^2)...
                 (x(3)-pos(3))/sqrt((x(1)-pos(1))^2 + (x(2)-pos(2))^2 + (x(3)-pos(3))^2)...
                 299792.458];
             
pos1 = [15600,7540,20140,.07074]; 
pos2 = [18760,2750,18610,.07220]; 
pos3 = [17610,14630,13480,.07690];
pos4 = [19170,610,18390, .07242];
             
J = @(x)[j_row(x,pos1);j_row(x,pos2);j_row(x,pos3);j_row(x,pos4)];
     
lambda=20;
maxIter=10000000;
tol=1e-8;
x0=[0,0,6370,0];

[satelite_sol_nm, err_satelite_nm] = levenberg_marquadt(r, x0, J, tol, maxIter, 0);
[satelite_sol,err_satelite_lm] = levenberg_marquadt(r, x0, J, tol, maxIter, lambda);
disp(satelite_sol);


