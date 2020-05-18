% script to build matrix A and test gs and mgs on A
A = diag(repelm(.1,5));
A = [1 1 1 1 1; A];

[Q, R] = gs(A);
[Q1, R1] = mgs(A);

disp(transpose(Q)*Q)
disp(transpose(Q1)*Q1)