![](../rainbow.png)\


# CPSC 302 - Assignment 5

Tristan Rice, q7w9a, 25886145

## 1. Stationary Method

### 1.a

$$A=M-N$$
$$Mx_{k+1} = Nx_k + b$$

$$x_{k+1} = x_k + \alpha (b-Ax_k)$$
$$x_{k+1} = x_k + \alpha b - \alpha Ax_k$$
$$x_{k+1} = (I-\alpha A)x_k + \alpha b$$
$$\frac{I}{\alpha} x_{k+1} = (\frac{I}{\alpha}-A)x_k + b$$

$$M = \frac{I}{\alpha}$$

$$T = (I-\alpha A)$$

### 1.b

Converges only if $\rho(T) < 1$

Thus, only converges if $\rho(I-\alpha A) < 1$.

This converges if $|1-\alpha \lambda| < 1$ where $\lambda$ is the eigenvalue
that maximizes the left hand statement. That happens to be $\lambda _n$ since the
eigenvalues are all positive and $\lambda _n$ is the smallest eigenvalue.

$-1 < 1-\alpha \lambda _n < 1$
$-2 < -\alpha \lambda _n < 0$
$2 > \alpha \lambda _n > 0$

We know that $\lambda _n$ won't ever be 0 since it's defined as such.

Thus, the condition for convergence is just $\alpha \lambda _n < 2$

### 1.c

Using the above convergence conditions, we get $\lambda _n < 2$. Thus, the
smallest eigenvalue must always be smaller than $2$ for the statement to hold.

A diagonal matrix is by definition strictly diagonally dominant and the
eigenvalues are just the values on the diagonal.

Thus we can construct a matrix with diagonal and eigenvalues
$\lambda = \{5,4,3\}$. Thus, the smallest eigenvalue is $3$ and this statement
is contradicted since our convergence condition fails.

## 2. Consider the two-dimensional partial differential equation ...

### 2.a

Since $B$ is symmetric we can express the condition number of it in terms of:

$$\kappa _2(B) = \frac{|\lambda |_{max}}{|\lambda|_{min}}$$

Since $A$ is also symmetric, we can find the eigenvalues of $B$ by adding
$(\alpha h)^2 I$ to each eigenvalue of $A$.

$$\lambda _{l,m} = 4 - 2 (\cos(l \pi h) + \cos(m \pi h)) + (\alpha h)^2,
1 \leq l,m \leq N$$

We need to find the maximum and minimum eigenvalues to determine the condition
number.

Since $\cos(0) = 1, \cos(\pi) = -1$ we see that having $l = m = 1$ minimizes the
second term and results in the smallest eigenvector.

The largest eigenvector is found when $l\pi h, m\pi h$ are close to $\pi$ since
that maximizes the second term.

$$\lambda_{min} = 4 - 2 (\cos (1 \pi h) + \cos(1 \pi h)) + (\alpha h)^2$$
$$\lambda_{max} = 4 - 2 (\cos (\lfloor N \rfloor \pi h) + \cos(\lfloor N \rfloor \pi h)) + (\alpha h)^2$$

$$\kappa _2 (B) = \frac{
4 - 2 (\cos (1 \pi h) + \cos(1 \pi h)) + (\alpha h)^2
}{
4 - 2 (\cos (\lfloor N \rfloor \pi h) + \cos(\lfloor N \rfloor \pi h)) + (\alpha h)^2
}$$

$$\kappa _2 (B) = \frac{
4 - 2 (\cos (\lfloor N \rfloor \pi  \frac{1}{N+1}) + \cos(\lfloor N \rfloor \pi  \frac{1}{N+1})) + (\alpha  \frac{1}{N+1})^2
}{
4 - 2 (\cos (1 \pi \frac{1}{N+1}) + \cos(1 \pi  \frac{1}{N+1})) + (\alpha  \frac{1}{N+1})^2
}$$

```m
octave:45> n = 1:20; N = sqrt(n)
N =

 Columns 1 through 18:

   1.0000   1.4142   1.7321   2.0000   2.2361   2.4495   2.6458   2.8284   3.0000   3.1623   3.3166   3.4641   3.6056   3.7417   3.8730   4.0000   4.1231   4.2426

 Columns 19 and 20:

   4.3589   4.4721

octave:46> k2 = (4 -2 * (cos(floor(N) * pi /(N+1)) + cos(floor(N) * pi / (N+1))) + (alpha./(N+1)).^2)./(4-2*(cos(pi./(N+1)) + cos(pi./(N+1))) + (alpha./(N+1)).^2)
k2 =

 Columns 1 through 18:

   1.2381   1.5050   1.7508   1.9843   2.2095   2.4285   2.6428   2.8532   3.0605   3.2650   3.4673   3.6676   3.8660   4.0629   4.2584   4.4526   4.6456   4.8376

 Columns 19 and 20:

   5.0286   5.2186
```

We see that increasing $n$ causes the condition number to increase since the
$\cos$ terms get closer to $1, -1$.


### 2.b

```
N = 31, n = 961, k2(B) = 4.143451e+02
jacobi: 2000 iters
gaussSeidel: 1108 iters
SOR: 1090 iters
cg: 52 iters
pcg: 23 iters

N = 31, n = 961, k2(B) = 2.752810e+02
jacobi: 1525 iters
gaussSeidel: 764 iters
SOR: 752 iters
cg: 50 iters
pcg: 22 iters

N = 31, n = 961, k2(B) = 8.994868e+00
jacobi: 61 iters
gaussSeidel: 34 iters
SOR: 33 iters
cg: 20 iters
pcg: 7 iters

N = 63, n = 3969, k2(B) = 1.659380e+03
jacobi: 2000 iters
gaussSeidel: 2000 iters
SOR: 2000 iters
cg: 102 iters
pcg: 42 iters

N = 63, n = 3969, k2(B) = 1.101665e+03
jacobi: 2000 iters
gaussSeidel: 2000 iters
SOR: 2000 iters
cg: 100 iters
pcg: 37 iters

N = 63, n = 3969, k2(B) = 3.309512e+01
jacobi: 218 iters
gaussSeidel: 113 iters
SOR: 111 iters
cg: 40 iters
pcg: 13 iters
```

We see that the speed of convergence is: Jacobi > Gauss-Seidel > SOR > CG > PCG.

The difference in speed of convergence makes sense since that's what the
theoretical convergence rates of the different methods tells us. We also see
that with varying $N, \alpha$ params that the speed of convergence is correlated
with the condition number. Problems that are better conditioned converge faster.


![](./q2.png)\




## 3. Suppose we wish to solve Ax = b ...

### 3.a

Increasing `diagonalIncrement` causes gsMorph to converge faster.

Increasing the diagonal entries of A increases the spectral radius of A. This
increase causes the spectral radius of the convergence matrix to go down since
the iteration matrix is $I - M^{-1}A$.

### 3.b

N/A

## 4. The smoothing factor ...

### 4.a

$A$ is the discrete Laplacian.

### 4.b

### 4.c
