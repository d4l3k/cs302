% problem 2.a
k = 15
u0 = log((1+k)/k)

un = u0
for n = 1:25
  un = -k * un + 1/n
end

% problem 2.b

u25True = integral(@(x)x.^25./(x+15),0,1)

u25ErrAbs = un-u25True

u25ErrRel = u25ErrAbs/u25True

% problem 3.e

un = u0;
for n = 1:25
  uTrue = integral(@(x)x.^n./(x+15),0,1);
  un = -k * un + 1/n;
  err = un - uTrue;
  fprintf('n = %d, u_n = %f, err = %f\n', n, un, err)
end
