function [L, U] = LU_decomposition(A)
    n = length(A);
    U = A;
    L = eye(n);

    for i = 1 : n
        uii = U(i,i);
        for j = i + 1 : n
            uji = U(j , i);
            factor =  uji / uii;
            for k = i : n
                U(j, k) = U(j, k) - (U(i, k) * factor);
                L(j, k) = L(j, k) + (L(i, k) * factor);
            end
        end
    end
end