# CPSC 302 - Assignment 1

2018-09-27, Tristan Rice, 25886145, q7w9a

## Question 1

### (a)

Proof by induction.

$$f(n) = 3n^3-n^2, g(n) = n^3$$

$$c = 6, n_0 = 10$$

Base case.

$$|3(10)^3 - (10)^2| \leq 6(10)^3$$
$$|3000 - 100| \leq 6000$$
$$2900 \leq 6000$$

Induction step.

Assume $$f(n-1) \leq cg(n-1)$$.

We must show that $f(n)-f(n-1) \leq c (g(n)-g(n-1))$ since if $f$ grows slower than
$g$ it must be smaller.

$$|3n^3 - n^2 - 3(n-1)^3 + (n-1)^2| \leq  6(n^3 - (n-1)^3)$$

$$|(n-1)^2 - n^2| \leq  3(n^3 - (n-1)^3)$$

This holds since $|(n-1)^2-n^2|$ is trivially smaller than $3(n^3 - (n-1)^3)$.

Thus, $f(n) = O(g(n))$.

TODO: cleanup

### (b)

Proof by induction.

$$f(n) = 3n^3+n^2, g(n) = n^3$$

Show $f(n) = \Theta(g(n))$.

$$c_1 = 1, c_2 = 6, n_0 = 10$$

Base case: $n = 10$

$$(10)^3 \leq 3(10)^3+(10)^2 \leq 6(10)^3$$
$$1000 \leq 3100 \leq 6000$$

Induction step.

Assume $$f(n-1) \leq cg(n-1)$$.

We must show that $c_1(g(n) - g(n-1)) \leq f(n)-f(n-1) \leq c_2 (g(n)-g(n-1))$ since if $f$ grows slower than
$g$ it must be smaller.

$$n^3 - (n-1)^3 \leq 3n^3+n^2 - 3(n-1)^3-(n-1)^2 \leq 6n^3 - 6(n-1)^3$$

$$-2n^3 +2(n-1)^3 \leq n^2 -(n-1)^2 \leq 3n^3 - 3(n-1)^3$$

TODO: cleanup

## Question 2

### (a)

If you ever find a number less than 0, or greater than the number before you
know there's an error.

### (b)

True value $= 0.0024$.

```
u25ErrAbs = 2.3363e+12
u25ErrRel = 9.6964e+14
```

### (c)

$$\hat{u}_0 = u_0 + \epsilon _0$$

$$\hat{u}_n = -k \hat{u}_{n-1} + \frac{1}{n}$$

$$\hat{u}_1 = -k \hat{u}_{0} + \frac{1}{1} - u_1$$

$$\hat{u}_1 = -k (u_0 + \epsilon _0) + \frac{1}{1}$$
$$\hat{u}_1 - u_1 = -k (u_0 + \epsilon _0) + \frac{1}{1} - u_1$$
$$\hat{u}_1 - u_1 = -k (u_0 + \epsilon _0) + \frac{1}{1} +ku_0 - 1$$
$$\epsilon _1 = \hat{u}_1 -u_1= -k\epsilon _0$$

### (d)

$$\epsilon _2 = \hat{u}_2 - u_2 = -k(\hat{u}_1) + \frac{1}{2} + k(u_1) - \frac{1}{2}$$
$$\epsilon _2 = -k(\hat{u}_1) + k(u_1)$$
$$\epsilon _2 = -k(-k(u_0 + \epsilon _0) + 1) + k(-ku_0+1)$$
$$\epsilon _2 = k^2u_0 + k^2\epsilon _0 - k - k^2 u_0 + k$$
$$\epsilon _2 = k^2\epsilon _0$$

General rule:
$$\epsilon _n = (-k)^n \epsilon _0$$

Since the error is exponential, every iteration gets $-k$ times as much error. Thus at
$n=25$, the error is $(15)^n = 2.5 * 10^{29}$ times worse than at $n=0$.

### (e)

The observed error is very close to what we calculated. When comparing the
error for two sequential $u_n$ values we see that the error increases by almost
exactly $-k = -15$.

```
>> 2336290021325.815918/-155752668088.387726
ans = -15
```

### (f)

Emperically we see $\epsilon _0$ as

```
>> 2336290021325.815918/(-15)^25
ans = -9.2522e-18
```

Since floating points are represented using exponentials, we should be able to
divide the rounding error by $k$ to get the error adjusted by the exponent.
Which matches our empirical answer.

$$|\epsilon _0| \leq \frac{2^{-53}}{k}$$

$$|\epsilon _n| = k^n (\frac{2^{-53}}{k})$$


### (g)

### (h)

### (i)

## Question 3

## Question 4

## Question 5
