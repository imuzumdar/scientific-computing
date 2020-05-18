syms x;
functions = [1, x-3/5,x^2-10/9*x + 5/21, x^3 - 21/13*x^2 + 105/143*x - 35/429, x^4 - 36/17*x^3 + 126/85*x^2 - 84/221*x + 63/2431, x^5 - 55/21*x^4 + 330/133*x^3 - 330/323*x^2 + 55/323*x - 33/4199];
fplot(functions)
axis([-.5 1.5 -.5 1.5])
grid on

title('First Six Orthogonal Polynomials')
legend('phi 0','phi 1','phi 2','phi 3','phi 4','phi 5')