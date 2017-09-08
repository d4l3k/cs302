
invert_n = [];
invert_times = [];
gaussian_n = [];
gaussian_times = [];

for N = [4 8 16 32 64 128 256 512]
  N
  A = buildA(N);
  f = buildf(N);

  if N < 128
    tic;
    u = inv(A)*f;
    invert_times = [invert_times, toc];
    invert_n = [invert_n, N];
  end

  tic;
  u = A\f;
  gaussian_times = [gaussian_times, toc];
  gaussian_n = [gaussian_n, N];
end

invert_n
invert_times

gaussian_n
gaussian_times

loglog(invert_n, invert_times, gaussian_n, gaussian_times);
title('Gaussian elimination vs Matrix inversion runtimes');
xlabel('N');
ylabel('Time (seconds)');
legend('Matrix inversion', 'Gaussian elimination');
grid on;
pause;
