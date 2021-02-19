# example of eigenvalue and eigenvectors of
# fastest mixing matrix
q = 1/2;
p = 1/2;
for n = 3:6
  A = diag( p*ones(1,n-1), 1 ) + diag( q*ones(1,n-1), -1 );
  A(1,1) = q;
  A(n,n) = p;
  [V,LAMBDA] = eig(A)
endfor
  
