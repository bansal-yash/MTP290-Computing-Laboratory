func = @(x) x*sin(x);

disp("Val using gaussian one point method is :- ")
disp(integration_gaussian_one_point(func, 0, pi/2) )