% heat equation solver using finite difference method 

% mesh size
N=20; h=1/N;

% time step size
k=0.01; nsteps=10;

% initial condition
x=0:h:1; u=sin(pi*x); u0=u;

% define the ratio r
D = k/h^2 % here a = 1

d= ones([N-1,1])*(1+D);
a= -ones([N-2,1])*D/2;
c= a;

J=2:N;

for j=1:nsteps
    b=(1-s)*u(J)+s/2*u(J-1)+s/2*u(J+1); % vectorization of calculations
    v=tri_solve(N-1,a,d,c,b);
    u(2:N)=v; u(1)=0; u(N+1)=0;
end

% plotting analytic vs numerical solution
T=nsteps*k; uT=u0*exp(-T*pi^2);
figure
subplot(211)
plot(x,u,'--'); hold on; plot(x,uT,'r')
subplot(212)
plot(x,u-uT)
