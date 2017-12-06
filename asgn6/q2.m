n = 10;
A = full(gallery('tridiag', n, -1, 2, -1));
eig1 = 2 - 2 * cos((n * pi)/(n+1))
v = rand(n,1)*2;

% 2.c
[e, v] = powerMethod(A, v, eig1)

% 2.d
e = qrIteration(A)

% 2.e
% take first eigenvalue and compute the eigenvector
v = inverseIteration(A, rand(n, 1)*2, e(1))

function [e, v] = powerMethod(A, v, exact)
  for i = 1:1000
    v_old = v;
    vh = A * v;
    v = vh/norm(vh);
  end
  e = v' * A * v;
  e_old = v_old' * A * v;
  convergence = abs(exact - e)/abs(exact - e_old)
  err = exact - e
end

function e = qrIteration(A)
  err = 1;
  while err > 10^-6
    err = norm(A - diag(diag(A)), 'fro')
    [Q, R] = qr(A);
    A = R * Q
  end
  e = diag(A)
end

function v = inverseIteration(A, v, shift)
  m = size(A,1);
  I = eye(m);
  for i = 1:1000
    vh = (A - shift * I) \ v;
    v = vh/norm(vh);
  end
end
