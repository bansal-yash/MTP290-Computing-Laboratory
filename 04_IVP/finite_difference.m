n = 8;
h = (2)/n;

A = zeros(n+1, n+1);
B = zeros(1, n+1);
A(1,1) = 1;
A(n+1, n+1) = 1;
B(1) = 0;
B(n+1) = 32;
x = zeros(1, n+1);
x(1) = 0;
x(n+1) = 2;
for i = 2 : n
    xi = 0 + (i-1)*h;
    A(i, i-1) = 1;
    A(i, i) = - 2;
    A(i, i+1) = 1;
    B(i) = 24*xi*xi*h*h;
    x(i) = (i-1)*h;
end



disp(A);
disp(B);

disp(A\B')

plot(x, A\B');
hold on;

x = 0 : 0.01 : 2;
y = 2*x.^4;

plot(x,y);