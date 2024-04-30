function x = gauss_elimination_det(A)
    n = length((A(1, :)));

    for i = 1 : n
        aii = A(i,i);
        for j = i + 1 : n
            aji = A(j , i);
            aij_by_aii =  aji / aii;
            for k = i : n
                A(j, k) = A(j, k) - (A(i, k) * aij_by_aii);
            end
        end
    end

    x = 1;
    for i = 1 : n
        x = x * A(i,i);
    end
end