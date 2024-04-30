func = @(x) x^3;

disp("Val using trapezoidal method with n = 4 is :- ")
disp(integration_trapezoidal(func, 1, 2, 4))

disp("Val using trapezoidal method with n = 8 is :- ")
disp(integration_trapezoidal(func, 1, 2, 8))

disp("Val using trapezoidal method with n = 100 is :- ")
disp(integration_trapezoidal(func, 1, 2, 100))