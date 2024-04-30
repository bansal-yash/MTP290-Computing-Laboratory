function lagrange()
    val = 1:0.1:5;
    x = [3.2, 2.7, 1.0, 4.8];
    y = [22.0, 17.8, 14.2, 38.3];
    
    poly = zeros(size(val));
    n = numel(x);

    for i = 1 : numel(val)
        temp = 0;
        for j = 1 : n
            temp1 = y(j);
            for k = 1 : n
                if k ~= j
                    temp1 = (temp1 * (val(i) - x(k))) / (x(j) - x(k));
                end
            end
            temp = temp + temp1;
        end
        poly(i) = temp;
    end

    plot(val, poly);
    title('Lagrange Polynomial');
    xlabel('x');
    ylabel('y');

    hold on;
    
    plot(x,y,'o');
    hold off;
end