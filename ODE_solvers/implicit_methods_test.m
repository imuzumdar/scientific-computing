int = [0 10];
f = @(y)(100*y*(1-y));
grad = @(y)(100*(1-y) - 100*y);


hold on
initial_conditions = linspace(0,2,20);
for i=1:20
    [t,sol] = ImEuler(int, initial_conditions(i), .2, @func1, @grad1);
    plot(0, initial_conditions(i), "*")
    plot(t,sol)
    % axis([-1 10 -1.5 1.5])
    grid on
end

hold off