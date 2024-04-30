function x = backward_substitution(A, b)
n = length(b);
x = zeros(1, n);

for i = n : -1 : 1
    temp = 0;
    for j = i+1 : n
        temp = temp + x(j)*A(i,j);
    end
    x(i) = (b(i) - temp)/ A(i,i);
end
end