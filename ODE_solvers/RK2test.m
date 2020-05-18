% parameters
int=[0,100]; 
h=0.01;

hold on

for i=1:20
    r1 = -1.2 + .4*rand(1,1);
    r2 = .8 + .4*rand(1,1);
    y0 = [r1, r2];
    plot(y0(1), y0(2), "*")
    [t,y] = RK4(int,y0,h);
    plot(y(1,:), y(2,:))
end

plot(-1,1,"o")
