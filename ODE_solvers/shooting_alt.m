function [x, u, y_u] = shooting_alt(a, b, n, alpha, beta, s)

%% shooting method for the BVP


%% preparation ...
y_u = [];
x = linspace (a, b, n+1);
h = (b - a)/n;
s0 = s(1);
s1 = s(2);

y0 = [alpha; s0];
u = RK4(y0, h, n, x);
y_u = [y_u; u];
f0 = beta - u(1,n+1);

y0 = [alpha; s1];
u = RK4(y0, h, n, x);
y_u = [y_u; u];
f1 = beta - u(1,n+1);


%%   apply the Secant method 

fi=1;
count=0;

while abs(fi)>1e-6 
    si = s1 - f1 * ( s1 - s0 ) / ( f1 - f0 );

    y0 = [alpha; si];
    
    u = RK4(y0, h, n, x);
    y_u = [y_u; u];
    fi = beta -  u(1,n+1);

    s0 = s1;   s1 = si;
    f0 = f1;   f1 = fi;
    
    disp(si)
    count=count+1;
end
end


function y = RK4(y0, h, n, x)

y = ones(2, n+1);
y(:,1)=y0;
for i=1:n
    k1=h*RHS(x(i), y(:,i));
    k2=h*RHS(x(i) + h/2,y(:,i) + k1/2);
    k3=h*RHS(x(i) + h/2,y(:,i) + k2/2);
    k4=h*RHS(x(i) + h, y(:,i) + k3);
    y(:,i+1)=y(:,i) + (k1 + 2*k2 + 2*k3 + k4)/6;
end
end

function dy = RHS(x,y)
    dy=zeros(2,1);
    dy(1)=y(2);
    dy(2)= sin(y(2));
end