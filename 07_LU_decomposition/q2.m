A = [ [1,1,-1]; [1,2,-2]; [-2,1,1]];
b = [1,1,1]';
[L,U] = LU_decomposition(A);

disp(L);
disp(U);
disp(L*U);

b_new = forward_substitution(L, b);

x = backward_substitution(U, b_new');

disp(x);