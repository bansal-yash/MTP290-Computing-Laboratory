v = input('Enter vector ');
n = input('Enter number');
ans1 = 0;
for i = 1 : length(A)
    if v(i) == n
        ans1 = ans1 + 1;
    end
end
disp(ans1);