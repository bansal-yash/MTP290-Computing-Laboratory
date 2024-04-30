func = @(x) (cos(x))^2;

disp("Val using simpsons method is :- ")
disp(integration_simpson(func, 0, pi/3, 100))

disp("Val using midpoint method is :- ")
disp(integration_midpoint(func, 0, pi/3))

disp("Val using composite midpoint method is :- ")
disp(integration_composite_midpoint(func, 0, pi/3, 100))

disp("Val using trapezoidal method is :- ")
disp(integration_trapezoidal(func, 0, pi/3, 100))