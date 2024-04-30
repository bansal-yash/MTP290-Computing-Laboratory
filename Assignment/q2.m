% Question 2

derivative = @(x, y) (2*y / x) + (x * x * exp(x));  % Given derivative function

x0 = 1;             % Initial value of x
y0 = 0;             % Initial value of y
step_size = 0.1;    % Given step size
xfinal = 2;         % Final value of x

runge_kutta_4(derivative, x0, y0, xfinal, step_size);   % Calling the required function

function runge_kutta_4(derivative, x0, y0, xfinal, step_size)
    x = x0;
    y = y0;
    n = (xfinal - x0) / step_size; % Calculating no of iterations required

    x_values = zeros(1, n+1);           % Initialising the vector of x values
    y_values_approx = zeros(1, n+1);    % Initialising the vector of approximate y values
    y_values_true = zeros(1, n+1);      % Initialising the vector of true y values

    x_values(1) = x;
    y_values_approx(1) = y;
    y_values_true(1) = 0;

    for i = 1 : n
        % Calculating k1, k2, k3 and k4 values as per runge-kutta 4 method
        k1 = step_size * derivative(x, y);
        k2 = step_size * derivative(x + step_size/2 , y + k1/2);
        k3 = step_size * derivative(x + step_size/2 , y + k2/2);
        k4 = step_size * derivative(x + step_size, y + k3);

        % Updating the values of x and y
        y = y + (k1 + 2*k2 + 2*k3 + k4)/6;
        x = x + step_size;

        x_values(i+1) = x;          % Storing the x value in the vector of x values
        y_values_approx(i+1) = y;   % Storing the approximate y value calculated 
                                    % through rk4 method in the vector of y values

        y_values_true(i+1) = x*x*( exp(x) - exp(1));    % Storing the true y values

    end
    
    true_errors = abs(y_values_approx - y_values_true);      % Calculating the vector of true errors at each node

    for i = 1 : n + 1
        disp(['Value at x = ', num2str(x_values(i)), ' is :- ', num2str(y_values_approx(i))]);
    end

    fprintf('\n');

    for i = 1 : n + 1
        disp(['Error at x = ', num2str(x_values(i)), ' is :- ', num2str(true_errors(i))]);
    end
    
    plot(x_values, y_values_approx);
end






