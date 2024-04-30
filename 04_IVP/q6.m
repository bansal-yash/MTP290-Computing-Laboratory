derivative = @(x,y) y - x;

disp("Val using rk4 :- ")
disp(IVP_rk4(derivative, 0, 1/2, 1, 0.1))