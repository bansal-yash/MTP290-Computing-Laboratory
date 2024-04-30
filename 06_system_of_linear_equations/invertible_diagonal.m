function x = invertible_diagonal(A, b)
    n = length(b);
    x = zeros(1,n);

    for i = 1 : n
        x(i) = b(i) / A(i,i);
    end
end