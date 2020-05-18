% alpha = zeros(3,1);
% b = 1;
% a = -1;

a = -1; b=1;

% composite trapezoid rule
alpha = zeros(3,1);
g = @(x)log(x+2);
h = (b-a)/99;
for i=1:4
    numerator = h/2*(legendreP(i-1, a)*g(a) + legendreP(i-1, b)*g(b));
    denominator = h/2*(legendreP(i-1, a)^2 + legendreP(i-1, b)^2);
    for j=1:98
        numerator = numerator + h*legendreP(i-1, a+j*h)*g(a+j*h);
        denominator = denominator + h*legendreP(i-1,a+j*h)^2;
    end
    alpha(i) = numerator/denominator;
end


% plotting legendre polynomial interpolations of heavyside function
for i=1:4
    n1 = legendreP(i-1,-(3/5)^.5)*log(-(3/5)^.5 + 2);
    n2 = legendreP(i-1,0)*log(0 + 2);
    n3 = legendreP(i-1,(3/5)^.5)*log((3/5)^.5 + 2);
    disp(n1);
    disp(n2);
    disp(n3);
    disp("_");
    
    d1 = legendreP(i-1,-(3/5)^.5)^2;
    d2 = legendreP(i-1,0)*log(0 + 2)^2;
    d3 = legendreP(i-1,(3/5)^.5)^2;
    disp(d1)
    disp(d2)
    disp(d3)
    disp("--------")
    alpha(i) = gauss_quad(n1, n2, n3)/gauss_quad(d1, d2, d3);
end

alpha1 = zeros(4);
b_vec = zeros(4,1);
for i=1:4
    b = 
    for 

% composite trapezoid rule
alpha_2 = zeros(30,1);
h = (b-a)/99;
for i=1:31
    numerator = h/2*(legendreP(i-1, a)*heaviside(a) + legendreP(i-1, b)*heaviside(b));
    denominator = h/2*(legendreP(i-1, a)^2 + legendreP(i-1, b)^2);
    for j=1:98
        numerator = numerator + h*legendreP(i-1, a+j*h)*heaviside(a+j*h);
        denominator = denominator + h*legendreP(i-1,a+j*h)^2;
    end
    alpha_2(i) = numerator/denominator;
end

i=31;
numerator = h/2*(legendreP(i-1, a)*heaviside(a) + legendreP(i-1, b)*heaviside(b));
denominator = h/2*(legendreP(i-1, a)^2 + legendreP(i-1, b)^2);
for j=1:98
    numerator = numerator + h*legendreP(i-1, a+j*h)*heaviside(a+j*h);
    denominator = denominator + h*legendreP(i-1,a+j*h)^2;
end
al = numerator/denominator;

functions = [heaviside(x), legendreP(0:10, x)*alpha2_new(1:11), 
    legendreP(0:20, x)*alpha2_new(1:21),legendreP(0:30, x)*alpha2_new];

fplot(functions)
axis([-1.5 1.5 -1.5 1.5])
grid on

title('Polynomials for n = 10, 20, 30')
legend('original','10','20','30')