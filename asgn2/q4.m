1;

function y = phi(x)
  y = cos(x) + x/10;
end

% 4.a

x = 1:0.1:5;
y = phi(x);

plot(x,y);
xlabel('x');
ylabel('φ(x)');
title('φ(x)');
print('4.a.png', '-dpng');

a = 1;
b = 5;
tol = 1e-8;

tau = (sqrt(5) - 1)/2;
x1 = a + (1-tau)*(b-a);
f1 = phi(x1);
x2 = a + tau *(b-a);
f2 = phi(x2);

iters = 0

while ((b-a) > tol)
  iters += 1;

  if (f1 > f2)
    a = x1;
    x1 = x2;
    f1 = f2;
    x2 = a + tau * (b-a);
    f2 = phi(x2);
  else
    b = x2;
    x2 = x1;
    f2 = f1;
    x1 = a + (1-tau)*(b-a);
    f1 = phi(x1);
  end
end

x1
x2
a
b
f1
f2
iters



% 4.b
x = -2:0.1:2.4;
y = phi(x);

plot(x,y);
xlabel('x');
ylabel('φ(x)');
title('φ(x)');
print('4.b.png', '-dpng');

a = -2;
b = 2.4;
tol = 1e-8;

tau = (sqrt(5) - 1)/2;
x1 = a + (1-tau)*(b-a);
f1 = phi(x1);
x2 = a + tau *(b-a);
f2 = phi(x2);

iters = 0

while ((b-a) > tol)
  iters += 1;

  if (f1 > f2)
    a = x1;
    x1 = x2;
    f1 = f2;
    x2 = a + tau * (b-a);
    f2 = phi(x2);
  else
    b = x2;
    x2 = x1;
    f2 = f1;
    x1 = a + (1-tau)*(b-a);
    f1 = phi(x1);
  end
end

x1
x2
a
b
f1
f2
iters
