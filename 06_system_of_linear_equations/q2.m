A = [[1,0,0]; [1,1,0]; [3,0.5,1]];
b = [1,2,1]';

x = forward_substitution(A, b);
disp(x)
