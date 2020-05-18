function [tout, yout] = ab2(FunFcn, tspan, y0, dt)

%
% the second order Adam-Bashforth method
%

t0=tspan(1);
for k=1:1
  tout(k+1) = t0 +k*dt;
  k = k + 1;

  k1 = feval(FunFcn, t, y);
  k2 = feval(FunFcn, t + dt/2, y + dt*k1/2); 
  k3 = feval(FunFcn, t + dt/2, y + dt*k2/2); 
  k4 = feval(FunFcn, t + dt,   y + dt*k3); 
  y = y + dt*(k1 + 2*k2 + 2*k3 +k4)/6;
  t = tout(k);
  yout(k,:) = y.';
end

fvals0= k1;

for k=2:N-1  
  tout(k+1) = t0 +k*dt;
  k = k + 1;
  
  fvals1=feval(FunFcn,t,y); 
  
  y=y+(dt/2)*(3*fvals1-fvals0);
  t = tout(k);
  yout(k,:) = y.';
  
  fvals0 = fvals1;
end