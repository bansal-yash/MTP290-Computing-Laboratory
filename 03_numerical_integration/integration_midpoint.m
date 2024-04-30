function val = integration_midpoint(func, l, u)
    mid = (l + u) / 2;
    a = func(mid);
    val = a * (u-l);