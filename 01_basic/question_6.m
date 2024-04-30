% question 6

x = -10 : 1 : 15;
y = 100*(x.^2);

plot(x,y, 'o');
xlabel("x");
ylabel("y");

hold on;
z = 10*(x.^3);
plot(x,z, 'o');
