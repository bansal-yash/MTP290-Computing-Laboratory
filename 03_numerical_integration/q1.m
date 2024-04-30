func = @(x) x^2 + cos(x);

disp("Val using midpoint method is :- ")
disp(integration_midpoint(func, 0, 4))

disp("Val using composite midpoint method is :- ")
disp(integration_composite_midpoint(func, 0, 4, 1000))

disp("Val using trapezoidal method is :- ")
disp(integration_trapezoidal(func, 0, 4, 1000))

disp("Val using simpsons method is :- ")
disp(integration_simpson(func, 0, 4, 100))