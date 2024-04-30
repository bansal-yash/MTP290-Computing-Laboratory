function x = gauss_elimination(A, b)
    n = length(b);
    
    for i = 1 : n
        aii = A(i,i);
        for j = i + 1 : n
            aji = A(j , i);
            aji_by_aii =  aji / aii;
            for k = i : n
                A(j, k) = A(j, k) - (A(i, k) * aji_by_aii);
            end
            b(j) = b(j) - (b(i) *  aji_by_aii);
        end

    end
    disp(A);
    disp(b);

    x = backward_substitution(A, b);
end
