func = @(x) (1 + x^2)^(1/2);

disp("Val using trapezoidal method is :- ")
disp(integration_trapezoidal(func, 1, 5, 100))

disp("Val using midpoint method is :- ")
disp(integration_midpoint(func, 1, 5))

disp("Val using composite midpoint method is :- ")
disp(integration_composite_midpoint(func, 1, 5, 100))