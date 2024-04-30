A = [[4,1,-1]; [5,1,2]; [6,1,1]];
b = [-2,4,6]';

x = gauss_elimination_partial_pivoting1(A, b);
disp(x)

function x = gauss_elimination_partial_pivoting1(A, b)
n = length(b);

for i = 1 : n
    curr = i;
    for m = i : n
        if (abs(A(m, i)) > abs(A(curr, i)))
            curr = m;
        end
    end
    temp = A(i, :);
    A(i, :) = A(curr, :);
    A(curr, :) = temp;
    temp = b(i);
    b(i) = b(curr);
    b(curr) = temp;
    aii = A(i,i);
    for j = i + 1 : n
        aji = A(j , i);
        aij_by_aii =  aji / aii;
        for k = i : n
            A(j, k) = A(j, k) - (A(i, k) * aij_by_aii);
        end
        b(j) = b(j) - (b(i) *  aij_by_aii);
    end
    
end

x = backward_substitution(A, b);
end