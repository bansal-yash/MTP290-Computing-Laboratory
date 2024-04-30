function val = integration_gaussian_two_point(func, l, u)
    mid = (l + u) / 2;
    diff = u - l;
    val = (func( mid - ((diff/2)*(1/(sqrt(3)))) )) + (func( mid + ((diff/2)*(1/(sqrt(3))))));
    val = val*(diff/2);