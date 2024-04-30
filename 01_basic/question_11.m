A = [3,2;2,3];
B = [1,1;-1,1];
S = (1/sqrt(2))*B;
D = (S^-1) * A * S;
d = det(D);
a = det(A);
disp(a);
disp(d);
disp(D);