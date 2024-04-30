function x = forward_substitution(A, b)
    n = length(b);
    x = zeros(1, n);

    for i = 1 : n
        temp = 0;
        for j = 1 : i-1
            temp = temp + x(j)*A(i,j);
        end
        x(i) = (b(i) - temp)/ A(i,i);
    end
end