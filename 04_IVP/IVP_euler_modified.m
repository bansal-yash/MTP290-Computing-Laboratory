function val = IVP_euler_modified(derivative, x0, y0, xfinal, step_size)
    x = x0;
    y = y0;
    n = (xfinal - x0) / step_size; 
    for i = 1 : n
        k1 = derivative(x, y);
        k2 = derivative(x + step_size, y + k1*step_size);
        y = y + 0.5*step_size*(k1 + k2);
        x = x + step_size;
    end
    val = y;