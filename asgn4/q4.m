A = [1 0 1 2; 2 3 5 10; 5 3 -2 6; 3 5 4 12; -1 6 3 8];
b = [4; -2; 5;-2; 1];

% problems asks for a bunch of different regularization values. inf is
% equivalent to no regularization since 10^-inf = 0.
for j = [inf 0 3 6 12]
  % gamma is the amount of regularization to use while computing least squares
  gamma = 10^-j;
  % compute x_gamma using the regularized least squares normal equations
  [rows, cols] = size(A);
  x = (A'*A + gamma * eye(cols))\(A' * b);
  % compute the residual
  r = b - A*x;
  % compute the norm of the residual
  err = norm(r, 2);
  % display the results
  disp("j = " + j + ":")
  disp("  - gamma = " + gamma)
  disp("  - err = " + err)
end


% compute TSVD for this problem
% first compute the SVD
[U, S, V] = svd(A);
% truncate lower singular values
S(S < 10^-10) = 0;
% compute A from the truncated SVD
Atrunc = U * S * V';
% solve the least squares using the TSVD formed A matrix
x = (Atrunc' * Atrunc)\(Atrunc' * b);
% compute the residual
r = b - A*x;
% compute the norm of the residual
err = norm(r, 2);

disp("TSVD:")
disp("  - err = " + err)
