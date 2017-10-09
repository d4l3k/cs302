1;

function y = f (x)
  y = x + log(x);
end

function y = fp(x)
  y = 1/x + 1;
end

% 1.a
xs = 0.1:0.01:1;
ys = f(xs);

plot(xs, ys);
xlabel('x');
ylabel('y');
title('f(x)');
print('1.a.png', '-dpng');

% 1.b.i

y = 0;
left = 0.5;
right = 0.6;
xs = []

while abs(left-right)>10e-10
  mid = (left+right)/2;
  xs = [xs, mid];
  y = f(mid);
  if y > 0
    right = mid;
  else
    left = mid;
  end
end

left
right
y

plot(1:length(xs), xs);
xlabel('n');
ylabel('x');
title('x convergence');
print('1.b.i.png', '-dpng');

% 1.b.ii

function y = g(x)
  y = x - f(x)/fp(x);
end

x = 0.5;
last_x = -100000000;

xs = [x];

while abs(x-last_x)>10e-10
  last_x = x;
  x = g(x);
  xs = [xs, x];
end
x

plot(1:length(xs), xs);
xlabel('n');
ylabel('x');
title('x convergence');
print('1.b.ii.png', '-dpng');

% 1.b.iii

x = 0.5;
last_x = -100000000;

xs = [x];

while abs(x-last_x)>10e-10
  last_x = x;
  x -= f(x)/fp(x);
  xs = [xs, x];
end
x

plot(1:length(xs), xs);
xlabel('n');
ylabel('x');
title('x convergence');
print('1.b.iii.png', '-dpng');

% 1.b.iiii

x = 0.6;
last_x = 0.5;

xs = [last_x, x];

while abs(x-last_x)>10e-10
  tmp_x = x;
  x -= f(x)*(x-last_x)/(f(x)-f(last_x));
  last_x = tmp_x;
  xs = [xs, x];
end
x

plot(1:length(xs), xs);
xlabel('n');
ylabel('x');
title('x convergence');
print('1.b.iiii.png', '-dpng');
