function val = integration_composite_midpoint(func, l, u, n)
    ls = l : ((u-l)/n) : u;
    val = 0;
    for i = 1 : n
        val = val + (func((ls(i) + ls(i+1))/2))*(ls(i+1) - ls(i));
    end