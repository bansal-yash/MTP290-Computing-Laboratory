function val = integration_gaussian_one_point(func, l, u)
    mid = (l + u) / 2;
    a = func(mid);
    val = a * (u-l);