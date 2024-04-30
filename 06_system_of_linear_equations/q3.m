A = [[1,-1,3]; [0,2,-3]; [0,0,-6.5]];
b = [1,7,6.5]';

x = backward_substitution(A, b);
disp(x)
