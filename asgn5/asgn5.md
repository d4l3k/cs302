![](../rainbow.png)\


# CPSC 302 - Assignment 4

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

### 2.b

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

### 4.b

### 4.c
