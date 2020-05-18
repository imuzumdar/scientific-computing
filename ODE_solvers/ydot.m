function z=ydot(t,y)
z = [y(1)^2 - y(2)^2; y(1)*y(2) + y(2) + y(1) + 1];