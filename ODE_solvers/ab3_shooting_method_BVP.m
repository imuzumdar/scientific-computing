% [t,y] = ab3(@f_ab3, [0,30], [-25;6], .005);

% problem 1
[t,y] = ab3(@f_ab3, [0,30], [-25;6], .005);

plot(y(1,:),y(2,:))
grid on

% to measure stability of 
plot(t, y(1,:))
plot(t, y(2,:))


% problem 2
[x,u,y_u] = shooting_alt(0, 1, 20, 1, -1, [2, -2]);

hold on
for i=3:6
    plot(x, y_u(2*i-1,:))
end
legend('1st iteration','2nd iteration', '3rd iteration', '4th iteration')
yline(-1);

% plot(x,y_u(1,:))