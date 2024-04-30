disp(rk_4(1, 0, 0.5, 0.1))

function res = rk_4(n,a,b,h)
    % syms x y;
    f = @(x,y) 2*x*y*y;
    curr = a;
    res = b;

    while curr<n-0.1
        k1 = h*(double(f(curr,res)));
        k2 = h*(double(f(curr + (h/2),res+(k1/2))));
        k3 = h*(double(f(curr + (h/2),res+(k2/2))));
        k4 = h*(double(f(curr + (h),res+(k3))));

        res = res + ((k1 + (2*(k2+k3)) + k4)/6);
        curr = curr + h;
    end
    disp('Answer by kutta 4 is: ');
    disp(res);
end