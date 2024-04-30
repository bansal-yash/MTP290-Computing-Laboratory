% Question 1

derivative = @(x, y) 2*x*y*y;       % The given derivative function

x0 = 0;                 % initial value of x
y0 = 0.5;               % initial value of y
step_size = 0.1;        % given step size
x_final = 1;            % final value of x

% Calling the required function to get finakl value of y
y_final = modified_euler(derivative, x0, y0, x_final, step_size);   

disp(['Value at x = ', num2str(x_final), ' is :- ', num2str(y_final)]);

function val = modified_euler(derivative, x0, y0, xfinal, step_size)
    x = x0;
    y = y0;
    n = (xfinal - x0) / step_size; % The required number of iterations
    for i = 1 : n
        % Calculating the slopes at current point and the next point
        k1 = derivative(x, y);      
        k2 = derivative(x + step_size, y + k1*step_size);
        % Updating the value of y as per modified euler's method
        y = y + 0.5*step_size*(k1 + k2);
        x = x + step_size;      % going to the next value of x
    end
    val = y;    % Final value of y
end