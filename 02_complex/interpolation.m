x = [3.2, 2.7, 1.0, 4.8];
fx = [22, 17.8, 14.2, 38.3];
plot(x, fx, 'o')
vmat = zeros(length(x), length(x));
for i = 1 : 4
    for j = 1 : 4
        vmat(i,j) = x(i) ^ (j-1);
    end
end

coeff = vmat \ fx';
coeff = coeff';

points = -1000 : 0.1 : 1000;
coeff = flip(coeff);
y = polyval(coeff, points);

plot(x,fx,'o');
hold on;
plot(points, y, 'b-', 'LineWidth', 2);
xlabel('x');
ylabel('y');
title('Plot of the Polynomial');
grid on;
disp(p);