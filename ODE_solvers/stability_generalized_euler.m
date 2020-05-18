%project 4 stability
b = @(h)(h*sin(h)-2*cos(h));
root1 = @(h)((-(b(h))+sqrt((b(h)^2)-4))/2);
root2 = @(h)((-(b(h))-sqrt((b(h)^2)-4))/2);

h = linspace(0,10,10000);
pos_roots = zeros(length(h),1);
neg_roots = zeros(length(h),1);

for step=1:length(h)
    r1 = root1(h(step));
    r2 = root2(h(step));
    
    pos_roots(step) = norm(r1);
    neg_roots(step) = norm(r2);
end

plot(h, pos_roots, 'LineWidth',2,'DisplayName','lambda 1')

hold on
plot(h, neg_roots, 'LineWidth',2,'DisplayName','lambda 2')
legend('FontSize',20)
title("Norms of Eigenvalues for Given Step Sizes",'FontSize',24)

plot(pos_roots, neg_roots, 'LineWidth',2)
title("lambda 1 norm vs lambda 2 norm",'FontSize',18)
yline(1)
xline(1)


    