function [t,y] = RK4(fcn,int,y0,h)

n=round((int(2)-int(1))/h);
t = ones(1, n+1);
y = ones(2, n+1);
t(1)=int(1); y(:,1)=y0;
for i=1:n
    k1=h*feval(fcn, t(i), y(:,i));
    k2=h*feval(fcn, t(i) + h/2,y(:,i) + k1/2);
    k3=h*feval(fcn, t(i) + h/2,y(:,i) + k2/2);
    k4=h*feval(fcn, t(i) + h, y(:,i) + k3);
    t(i+1)=t(i)+h;
    y(:,i+1)=y(:,i) + (k1 + 2*k2 + 2*k3 + k4)/6;
end