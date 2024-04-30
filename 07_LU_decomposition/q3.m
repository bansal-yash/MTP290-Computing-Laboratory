A = [ [16, 4, 4, -4]; [4, 10, 4, 2]; [4, 4, 6, -2]; [-4, 2, -2, 4]];
b = [32, 26, 20, -6]';

disp(A\b);

[L,U] = cholesky_decomposition(A);

disp(L);
disp(U);
disp(L*U);
disp(b);

b_new = forward_substitution(L, b);

x = backward_substitution(U, b_new');

disp(x);