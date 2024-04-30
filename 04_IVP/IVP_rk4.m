function val = IVP_rk4(derivative, x0, y0, xfinal, step_size)
    x = x0;
    y = y0;
    n = (xfinal - x0) / step_size; 
    for i = 1 : n
        k1 = step_size * derivative(x, y);
        k2 = step_size * derivative(x + step_size/2 , y + k1/2);
        k3 = step_size * derivative(x + step_size/2 , y + k2/2);
        k4 = step_size * derivative(x + step_size, y + k3);

        y = y + (k1 + 2*k2 + 2*k3 + k4)/6;
        x = x + step_size;
    end
    val = y;