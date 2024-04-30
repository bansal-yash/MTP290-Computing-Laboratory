function val = integration_simpson(func, l, u, n) % n is number of intervals
    ls = l : ((u-l)/n) : u;
    val = 0;

    for i = 1 : n
        temp = func(ls(i)) + func(ls(i+1)) + (4 * func((ls(i) + ls(i+1))/2));
        temp = temp * (ls(i+1) - ls(i))/6;
        val = val + temp;
    end
    