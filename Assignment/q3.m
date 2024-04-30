% Question 3

n = 8;
h = pi / (2*n);

A = zeros(n+1, n+1);        % initialising matrix A
B = zeros(1, n+1);          % initialising matrix B

A(1,1) = 1;
A(n+1, n+1) = 1;
B(1) = 1;
B(n+1) = 0;

for i = 2 : n
    xi = (i-1)*h;
    A(i, i-1) = 1;    % coefficient of y(i-1) was 1
    A(i, i) = h*h - 2;   % coefficient of y(i) was (delta(x)^2) - 2
    A(i, i+1) = 1;    % coefficient of y(i+1) was 1
    B(i) = h*h;   % constant term was (delta(x)^2)
end

final_ys = A\B';       % these are approximated values of y from finite difference method


disp("Approximate values are :- ")
disp(final_ys')
final_xs = zeros(1, n+1);

for i = 1 : n+1
    final_xs(i) = (i-1)*h;
    disp(['Value at x = ', num2str((i-1)*h), ' is :- ', num2str(final_ys(i))]);
end

plot(final_xs, final_ys);

% we got the values of coefficients of y(i-1), y(i), y(i+1) and the
% constant term by solving the following equation :- 

% ( y(i+1) - 2*y(i) + y(i-1) / delta(x)^2 ) + y = 1

