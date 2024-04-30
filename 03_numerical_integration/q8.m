func = @(x) exp(x^2);

disp("Val using trapezoidal method with n = 4 is :- ")
disp(integration_trapezoidal(func, 0, 2, 5000))

disp("Val using simpsons method with n = 4 is :- ")
disp(integration_simpson(func, 0, 2, 100))