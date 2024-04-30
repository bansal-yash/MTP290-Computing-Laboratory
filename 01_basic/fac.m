function f = fac(n)
    if n < 0
        disp("invalid");
    elseif n == 0
        f = 1;
    else
        f = n * fac(n-1);
    end
end