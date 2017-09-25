% Algorithm 1
y = 0;
last_y = 1;
i = 1;
while y ~= last_y
  last_y = y;
  y = y + 1/i^2;
  i = i + 1;
end

y
i

yTrue = pi^2/6
e1 = (yTrue - y)/yTrue

% Algorithm 2

ms = [10^8 10^9 10^10];
errs = [];

for m = ms
  m
  y = 0;
  while m > 0
    y = y + 1/m^2;
    m = m - 1;
  end
  errs = [errs, (yTrue - y)/yTrue];
end

loglog(ms, errs, '-o', [i], [e1], '-o');
title('relative error of f(x) counting down');
xlabel('m');
ylabel('err');
grid on;
