func = @(x) x^3;

disp("Val using simpsons method with n = 4 is :- ")
disp(integration_simpson(func, 1, 2, 4))

disp("Val using simpsons method with n = 8 is :- ")
disp(integration_simpson(func, 1, 2, 8))

disp("Val using simpsons method with n = 100 is :- ")
disp(integration_simpson(func, 1, 2, 100))