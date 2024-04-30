function [L, U] = cholesky_decomposition(A)
    n = length(A);
    G = A;

    for k = 1 : n - 1
        G(k, k) = sqrt(G(k, k));

        for i = k + 1 : n
            G(i, k) = G(i, k) / G(k, k);
        end

        for j = k + 1 : n
            for i = j : n
                G(i, j) = G(i, j) - (G(i, k) * G(j, k));
            end
        end
    end

    for i = 1 : n
        for k = i + 1 : n
            G(i, k) = 0;
        end
    end

    G(n, n) = sqrt(G(n , n));
    L = G;
    U = G';
end