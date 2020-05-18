% cuppen _test

%    N = 4;
%    d = 10*rand(N,1); % The diagonal values
%    t = triu(bsxfun(@min,d,d.').*rand(N),1); % The upper trianglar random values
%    a = diag(d)+t+t.'; % Put them together in a symmetric matrix
%    a(4,1) = 0;
%    a(1,4) = 0; 

a = triDiag(4); 
tic
[l,q] = cuppen(a);
toc

tic
[eig_val] = eig(a);
toc
   