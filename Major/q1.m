A = [ [1, 1, 0, 1]; [2, 1, -1, 1]; [4, -1, -2, 2]; [3, -1, -1, 1]];

b = [1, 2, 0.5, 1]';

disp( "Answer of part 1 is :- ")
disp(gauss_elimination(A, b));

[L, U, M1, M2, M3, A1, A2, A3] = LU_decomposition(A);

disp( "Answers for Part 2 are :- ")
disp("L is :- ")
disp(L);
disp("U is :- ")
disp(U);

disp("Answers for Part 3 are :- ")
disp("M1 is :- ");
disp(M1);
disp("M2 is :- ");
disp(M2);
disp("M3 is :- ");
disp(M3);

disp("The intermediate matrices are :- ")
disp("A1 is :- ");
disp(A1);
disp("A2 is :- ");
disp(A2);
disp("A3 is :- ");
disp(A3);

disp("verifying equations 1 and 2 :- ")
U_new = M3 * M2 * M1 * A;
L_new = inv(M1) * inv(M2) * inv(M3);

disp("L calculated using the equation is :- ")
disp(L_new);
disp("U calculated using the equation is :- ")
disp(U_new);

disp("difference matrices are :- ")
disp(L_new - L);
disp(U_new - U);

disp("L and U calcuated using the decomposition matches L and U calculated using the formula, hence equations hold.\n")


function x = gauss_elimination(A, b) % function for gauss elimination
    n = length(A);

    for i = 1 : n   % for iterating over all the rows
        aii = A(i, i);
        for j = i + 1 : n   % for iteration over all the rows below current row
            aji = A(j, i);
            factor = aji / aii; % calculating factor according to the method
            for k = i : n
                A(j, k) = A(j, k) - (factor * A(i, k)); % Subtracting the row multiplied by the factor
            end
            b(j) = b(j) - (factor * b(i));  % changing b accordingly
        end
    end

    x = zeros(1, n);
    % applying backward substitution method
    for i = n : -1 : 1
        temp = 0;
        for j = i + 1 : n
            temp = temp + A(i, j) * x(j);
        end
        x(i) = (b(i) - temp) / A(i, i);
    end
end

function [L, U, M1, M2, M3, A1, A2, A3] = LU_decomposition(A)
    n = length(A);
    U = A;
    L = eye(n);
    M1 = eye(n);
    M2 = eye(n);
    M3 = eye(n);
    
    for i = 1 : n
        aii = U(i, i);
        for j = i + 1 : n
            aji = U(j, i);
            factor = aji / aii; % calculating factor to be multipled while subtracting
            % calculating M matrices according to the method
            if (i == 1)
                M1(j, i) = M1(j, i) - factor; 
            end
            if (i == 2)
                M2(j, i) = M2(j, i) - factor;
            end
            if (i == 3)
                M3(j, i) = M3(j, i) - factor;
            end

            for k = i : n
                U(j, k) = U(j, k) - (factor * U(i, k)); % Updating U matrix
                L(j, k) = L(j, k) + (factor * L(i, k)); % Updating L matrix
            end
        end
        % Storing the intermediate matrices
        if i == 1
            A1 = U;
        end
        if i == 2
            A2 = U;
        end
        if i == 3
            A3 = U;
        end
    end
end













