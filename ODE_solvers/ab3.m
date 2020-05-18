function [tout, yout] = ab3(FunFcn, tspan, y0, dt)

%
% the third order Adam-Bashforth method
%

%instantiation of key variables 
N=round((tspan(2)-tspan(1))/dt);
tout=ones(1,N+1);
yout=ones(2,N+1);

tout(1)=tspan(1); yout(:,1)=y0;

% RK2
for k=1:2
  t = tout(k); y=yout(:,k);
  
  k1 = dt*feval(FunFcn, t, y);
  k2 = dt*feval(FunFcn, t + dt/2, y + k1/2); 
  
  tout(k+1)=t + dt;
  yout(:,k+1)=y + k2;
end

%instantiation of fvals for AB3
fvals0 = feval(FunFcn, tout(1), yout(:,1));
fvals1 = feval(FunFcn, tout(2), yout(:,2));

% AB3 
for k=3:N  
  t = tout(k); y=yout(:,k);
  fvals2 = feval(FunFcn,t,y); 
  
  tout(k+1) = t + dt;
  yout(:,k+1) = y + (dt/12)*(23*fvals2 -16*fvals1 + 5*fvals0);
  
  fvals0 = fvals1;
  fvals1 = fvals2;
end

