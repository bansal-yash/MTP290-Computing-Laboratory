func = @(x) 1 / (3 - (x^(1/2)));


disp("Val using simpsons method is :- ")
disp(integration_simpson(func, 4, 6, 4))

disp("Val using midpoint method is :- ")
disp(integration_midpoint(func, 4, 6))

disp("Val using composite midpoint method is :- ")
disp(integration_composite_midpoint(func, 4, 6, 50))

disp("Val using trapezoidal method is :- ")
disp(integration_trapezoidal(func, 4, 6, 50))