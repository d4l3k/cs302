x = [5e-4, 5e-5, 5e-6,5e-7,5e-8,5e-9,5e-10,5e-11,5e-12]
f = 1-cos(x)
g = 2*sin(x./2);

err = (g-f)./g

loglog(x, err);
title('relative error between g(x) and f(x)');
xlabel('x');
ylabel('(g(x)-f(x))/g(x)');
grid on;
