A = [ [4, 1, -1]; [2, 7, 1]; [1, -3, 12]];
b = [3, 19, 31]';
initial_guess = [0, 0, 0]';

x = relaxation(A, b, initial_guess);

disp("answer is :- ")
disp(x);


function x = relaxation(A, b, initial_guess)
    n = length(A);
    x = initial_guess;
    w = 1.5;

    for iterations = 1 : 50 % For 50 iterations of the method
        for i = 1 : n
            temp = 0;
            for j = 1 : n
                temp = temp + (A(i, j) * x(j)); % Calculating the summations of the terms
            end
            temp = temp - b(i);
            temp = A(i, i) * x(i) - (w * temp);
            temp = temp / A(i, i);  % Final new value of x :- xi (k+1)
            x(i) = temp; % updating value of x(i)
        end
    end
end