x = [2.1, 2.4, 2.7, 3.0, 3.3, 3.6];
y = [3.2, 2.7, 2.9, 3.5, 4.1, 5.2];

val = 0;

for i = 1 : 5
    val = val + (((y(i) + y(i+1))/2)*(x(i+1) - x(i)));
end

disp(val);