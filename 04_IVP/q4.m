derivative = @(x,y) 1 + ((x-y)^2);


disp("Val using explicit euler :- ")
disp(IVP_euler_explicit(derivative, 0, 1/2, 1, 0.1))

disp("Val using modified euler :- ")
disp(IVP_rk4(derivative, 2, 1, 3, 0.5))