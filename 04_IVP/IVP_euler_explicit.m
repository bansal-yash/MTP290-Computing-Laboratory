function val = IVP_euler_explicit(derivative, x0, y0, xfinal, step_size)
    x = x0;
    y = y0;
    n = (xfinal - x0) / step_size; 
    for i = 1 : n
        y = y + (derivative(x,y)*step_size);
        x = x + step_size;
    end
    val = y;