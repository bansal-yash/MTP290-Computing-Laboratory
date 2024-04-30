func = @(x) (cos(x))^2;

disp("Val using gaussian two point method is :- ")
disp(integration_gaussian_two_point(func, 0, pi/3) )