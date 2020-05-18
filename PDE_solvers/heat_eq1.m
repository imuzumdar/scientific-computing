% heat equation solver using finite difference methods
% mesh size
N=20; h=1/N;

% time step size
k=0.01; nsteps=10;

% initial conditions in analytic solution 
x=0:h:1; 
u=sin(pi*x); 
u0=u;

% define the ratio r
D = k/h^2

d= ones([N-1,1])*(1+2*D);
a= -ones([N-2,1])*D;
c= a;

for j=1:nsteps
    b=u(2:N);
    v=tri_solve(N-1,a,d,c,b);
    u(2:N)=v; u(1)=0; u(N+1)=0;
end

% plotting numerical vs analytic solution
T=nsteps*k; 
uT=u0*exp(-T*pi^2);
figure
subplot(211)
plot(x,u,'--'); hold on; plot(x,uT,'r')
subplot(212)
plot(x,u-uT)
