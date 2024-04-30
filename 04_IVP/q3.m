derivative = @(x,y) y-x;

disp("Val using explicit euler :- ")
disp(IVP_euler_explicit(derivative, 0, 1/2, 1, 0.1))

disp("Val using implicit euler :- ")
disp(IVP_euler_modified(derivative, 0, 1/2, 1, 0.1))