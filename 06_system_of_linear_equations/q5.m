A = [[1,2,3]; [4,5,6]; [7,8,10]];
b = [7,10,13]';

x = gauss_elimination(A, b);
disp(x)