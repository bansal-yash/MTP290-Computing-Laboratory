clear all
clc
clf

x = 90 : 0.01 : 100;
y = exp(x);

%plot(x,y, 'r');
%hold on;

z = 0;
n = 110;
for i = 0 : n
    z = z + (x.^i)/ factorial(i);
end

plot(x,z,'g',x,y,'r');