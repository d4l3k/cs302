N = 31;
alpha = sqrt(2) * pi;
global iters;
iters = 2000;

n = N^2;
h = 1/(N+1);
c = (alpha * h)^2;
B = delsq(numgrid('S', N + 2)) + c*speye(n);
b = B*ones(N^2,1);
x = zeros(n, 1);

gaussSeidel(B, x, b);

function x = gaussSeidel(B, x, b)
  global iters;

  % Create matrix splitting of B
  D = diag(diag(B));
  L = -1*tril(B,-1);
  U = -1*triu(B,1);

  % Compute iteration matrix
  M = inv(D-L);

  r0 = residual(B, x, b)
  for i = 1:iters
    x = M * (b + U * x);  % compute current solution
    r = residual(B, x, b)
    i
    if r/r0 < 10^-6
      break
    end
  end
end

function r = residual(B, x, b)
  r = norm(b - B*x, 2);
end
