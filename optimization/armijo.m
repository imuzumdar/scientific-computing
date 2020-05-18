function x_new=armijo(h, x_old, h_old, d, ddrv, a0)

% line search based on the basic armijo's rule

c=1.d-4; fac=0.6;a=a0; 
%initial step length
x_new= x_old + a*d;
h_new= feval(h,x_new);

goal=h_old+c*a*ddrv;

while h_new > goal    
    a= a*fac;    
    x_new=x_old+a*d;    
    h_new=feval(h,x_new);     
    goal=h_old+c*a*ddrv;
end