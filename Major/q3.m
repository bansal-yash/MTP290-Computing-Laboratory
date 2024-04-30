A = [ [4, -1, 0, 0]; [-1, 4, -1, 0]; [0, -1, 4, -1]; [0, 0, -1, 4]];
b = [1, 0, 0, 0]';

[L, U] = cholesky_decomposition(A);
disp("L is :- ")
disp(L);
disp("U is :- ")
disp(U);

% Now applying forward and backward substitutions to find the answer
y = forward_substitution(L, b);
x = backward_substitution(U, y);

disp("solution is :- ")
disp(x);

Ainv = inv(U) * inv(L); % Finding A inverse
disp("inverse of A is :- ")
disp(Ainv);


function [L, U] = cholesky_decomposition(A)
    n = length(A);
    G = A;

    for i = 1 : n - 1
        G(i, i) = sqrt( G(i, i));   % calculating the square roots of diagonal terms

        for j = i + 1 : n
            G(j, i) = G(j, i) / G(i, i);    % Updating the values of the column accordingly
        end

        for j = i + 1 : n   % for iteratign through the columns
            for k = j : n
                G(k, j) = G(k, j) - (G(k, i) * G(j, i));    % Updating the values in G
            end
        end
    end

    for i = 1 : n
        for j = i + 1 : n
            G(i, j) = 0;    % Making the upper traingular terms to be 0, so that it can be lower traingular
        end
    end

    G(n, n) = sqrt(G(n , n));
    L = G;
    U = G'; % U is transpose of L for cholesky
end

% Function for forward substitution
function x = forward_substitution(A, b)
    n = length(A);
    x = zeros(1, n);

    for i = 1 : n
        temp = 0;
        for j = 1 : i - 1
            temp = temp + A(i, j) * x(j);
        end
        x(i) = (b(i) - temp) / A(i, i);
    end
end

% Function for backward_substitution
function x = backward_substitution(A, b)
    n = length(A);
    x = zeros(1, n);

    for i = n : -1 : 1
        temp = 0;
        for j = i + 1 : n
            temp = temp + A(i, j) * x(j);
        end
        x(i) = (b(i) - temp) / A(i, i);
    end
end
