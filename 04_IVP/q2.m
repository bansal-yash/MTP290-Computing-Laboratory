derivative = @(x,y) (y*log(y))/x;

disp("Val using explicit euler :- ")
disp(IVP_euler_explicit(derivative, 2, exp(1), 3, 0.1))

disp("Val using implicit euler :- ")
disp(IVP_euler_implicit(derivative, 2, exp(1), 3, 0.1))