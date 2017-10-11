x = 2;
last_x = -1000;
xs = [x];

while abs(x-last_x)>1e-4
  last_x = x;
  x -= x^2/(x^2-1)
  xs = [xs, x];
end

plot(1:length(xs), xs);
xlabel('n');
ylabel('x');
title('x convergence');
print('3.b.png', '-dpng');
