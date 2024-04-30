A = [ [0, 1, 0, 0]; [1, 0, 3, 0]; [-0.5, 0, -0.2, 1]; [-0.5, -0.3, 1, 0]];
b = [1, 2, 0.5, 1]';

[x, P1, P2, P3] = gauss_partial_pivoting(A, b);
disp(x);

disp("P1 is :- ")
disp(P1)
disp("P2 is :- ")
disp(P2)
disp("P3 is :- ")
disp(P3)

[L, U, M1, M2, M3] = LU_decomposition_pivoting(P3 * P2 * P1 * A);
P = P3 * P2 * P1;

disp("L is :- ")
disp(L)
disp("U is :- ")
disp(U)

disp("Permutation matrix P is :- ")
disp(P);

disp("P*A is :- ")
disp(P*A)
disp("L*U is :- ")
disp(L*U)

function [x, P1, P2, P3] = gauss_partial_pivoting(A, b)
    n = length(A);

    for i = 1 : n
        % finding the maximum value in all the rows for ith column
        max_row = i;
        for j = i + 1 : n
            if (abs(A(j, i)) > abs(A(max_row, i)))
                max_row = j;
            end
        end
        % maximum value is in max_row row  
        % Now, swapping the rows of A
        temp = A(i, :);
        A(i, :) = A(max_row, :);
        A(max_row, :) = temp;
        
        % Swapping the b values
        temp_b = b(i);
        b(i) = b(max_row);
        b(max_row) = temp_b;
        
        % Finding the permutation matrix
        P = eye(n);
        temp = P(i, :);
        P(i, :) = P(max_row, :);
        P(max_row, :) = temp;
        
        if i == 1
            P1 = P;
        end
        if i == 2
            P2 = P;
        end
        if i == 3
            P3 = P;
        end

        aii = A(i, i);
        % Normal guass elimination code after pivoting
        for j = i + 1 : n
            aji = A(j, i);
            factor = aji / aii;
            for k = i : n
                A(j, k) = A(j, k) - (factor * A(i, k));
            end
            b(j) = b(j) - (factor * b(i));
        end
    end

    x = zeros(1, n);
    % applying backward substitution
    for i = n : -1 : 1
        temp = 0;
        for j = i + 1 : n
            temp = temp + A(i, j) * x(j);
        end
        x(i) = (b(i) - temp) / A(i, i);
    end
end

function [L, U, M1, M2, M3] = LU_decomposition_pivoting(A)
    n = length(A);
    U = A;
    L = eye(n);
    M1 = eye(n);
    M2 = eye(n);
    M3 = eye(n);
    
    for i = 1 : n
        max_row = i;
        for j = i + 1 : n
            if (abs(U(j, i)) > abs(U(max_row, i)))
                max_row = j;
            end
        end

        temp = U(i, :);
        U(i, :) = U(max_row, :);
        U(max_row, :) = temp;

        aii = U(i, i);
        for j = i + 1 : n
            aji = U(j, i);
            factor = aji / aii;
         
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
                U(j, k) = U(j, k) - (factor * U(i, k));
                L(j, k) = L(j, k) + (factor * L(i, k));
            end
        end
    end
end







