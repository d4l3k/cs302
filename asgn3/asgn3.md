# CPSC 302 - Assignment 3

## 1. Linear Algebra

### 1.a

$$||A||_1 = max_{j} (a +b, b + a + b,\ldots, b + a) = a + 2b$$
$$||A||_\infty = max_{j} (a +b, b + a + b,\ldots, b + a) = a + 2b$$

$$||A||_2 = \sqrt{\Lambda_{max}(A^TA)}=\sigma_{max}(A)$$

The largest singular value is the square root of the largets eigen vector.

$$\Lambda_{max} = a+2b$$
$$\sigma_{max} = \sqrt{a+2b}$$

$$||A||_2 = \sqrt{a+2b}$$

### 1.b

The matrix $A$ is defined to be symmetric.

Claim: If $A$ is strictly diagonally dominant then it is symmetric positive
definite.

$$v \in \mathbb{R}^{n}$$

$$Av = \begin{bmatrix}
av_1 + bv_2 \\
bv_1 + av_2 + b v_3 \\
bv_2 + av_3 + b v_4 \\
\hdots \\
bv_{n-2} + av_{n-1} + b v_n \\
bv_{n-1} + av_n
\end{bmatrix}$$

$$v^TAv =
v_1(av_1 + bv_2) +
v_2(bv_1 + av_2 + b v_3) +
v_3(bv_2 + av_3 + b v_4) +
\hdots
v_{n-1}(bv_{n-2} + av_{n-1} + b v_n) +
v_n(bv_{n-1} + av_n)$$

$$v^TAv =
av_1^2 + bv_1v_2 +
bv_1v_2 + av_2^2 + bv_3v_2 +
bv_2v_3 + av_3^2 + b v_4v_3 +
\hdots
bv_{n-2}v_{n-1} + av_{n-1}^2 + b v_nv_{n-1} +
bv_{n-1}v_n + av_n^2$$

$$v^TAv =
av_1^2 + 2bv_1v_2 +
av_2^2 + 2bv_2v_3 +
av_3^2 + 2bv_3v_4 +
\hdots
av_{n-1}^2 + 2bv_{n-1}v_n +
av_n^2$$

Since $A$ is strictly diagonally dominant, that means $a > 2b$.
Thus, $v^TAv > 0$ and $A$ is symmetric positive definite.

### 1.c

We first need to figure out for which $j$ is the maximum and minimum of
$\cos(\frac{\pi j}{n+1}$. $a,b$ are both positive so they don't affect the sign.

$$\cos(\frac{\pi}{n+1}) \approx 1$$
$$\cos(\frac{n\pi}{n+1}) \approx -1$$

$$\max_{j=1,\ldots,n} = a+2b$$
$$\min_{j=1,\ldots,n} = a-2b$$

$$\kappa_2(A) = \frac{a+2b}{a-2b}$$

## 2. Tridiagonal Systems of Equations

TODO

### 2.a

### 2.b

## 3. Cholesky Decomposition

### 3.a

If you set
$$A=\begin{bmatrix}
1
\end{bmatrix},
\alpha=-1,
B=\begin{bmatrix}
1 & 0 \\
0 & -1
\end{bmatrix}$$

$$\begin{bmatrix}
0 & 1
\end{bmatrix} B
\begin{bmatrix}
0 \\
1
\end{bmatrix} = -1$$

We see that the scalar $\alpha$ is negative, it violates the definition of
positive definite: $z^TMz$ is positive for every non-zero column vector
$z$. Thus $\alpha$ must be positive.

If we construct the reverse
$$A=\begin{bmatrix}
-1
\end{bmatrix},
\alpha=1,
B=\begin{bmatrix}
-1 & 0 \\
0 & 1
\end{bmatrix}$$

$$\begin{bmatrix}
1 & 0
\end{bmatrix} B
\begin{bmatrix}
1 \\
0
\end{bmatrix} = -1$$

We see that if $A$ is not positive definite $B$ is not positive definite. Thus,
$A$ must be positive definite.

### 3.b

$$A=chol(A)chol(A)^T$$

$$chol(B) = \begin{bmatrix}
chol(A) & 0 \\
dunno & \sqrt{\alpha}
\end{bmatrix}$$

TODO

### 3.c

$$B=\begin{bmatrix}
4 & 2 & 2 \\
2 & 6 & 2 \\
2 & 2 & 5
\end{bmatrix}$$

$$B=
\begin{bmatrix}
2 & 0 & 0 \\
1 & 1 & 0 \\
1 & 0 & 1
\end{bmatrix}
\begin{bmatrix}
1 & 0 & 0 \\
0 & 5 & 1 \\
0 & 1 & 4
\end{bmatrix}
\begin{bmatrix}
2 & 1 & 1 \\
0 & 1 & 0 \\
0 & 0 & 1
\end{bmatrix} $$

$$B=
\begin{bmatrix}
2 & 0 & 0 \\
1 & \sqrt{5} & 0 \\
1 & \frac1{\sqrt 5} & 1
\end{bmatrix}
\begin{bmatrix}
1 & 0 & 0 \\
0 & 1 & 0 \\
0 & 0 & \frac{19}5
\end{bmatrix}
\begin{bmatrix}
2 & 1 & 1 \\
0 & \sqrt{5} & \frac1{\sqrt 5} \\
0 & 0 & 1
\end{bmatrix} $$

$$B=
\begin{bmatrix}
2 & 0 & 0 \\
1 & \sqrt{5} & 0 \\
1 & \frac1{\sqrt 5} & \sqrt{\frac{19}5}
\end{bmatrix}
\begin{bmatrix}
1 & 0 & 0 \\
0 & 1 & 0 \\
0 & 0 & 1
\end{bmatrix}
\begin{bmatrix}
2 & 1 & 1 \\
0 & \sqrt{5} & \frac1{\sqrt 5} \\
0 & 0 & \sqrt{\frac{19}5}
\end{bmatrix} $$

$$C=\begin{bmatrix}
2 & 0 & 0 \\
1 & \sqrt 5 & 0 \\
1 &  \frac1{\sqrt{5}} &  \sqrt{\frac{19}5}
\end{bmatrix}$$



## 4. $LDL^T$ Decomposition

$$A = \begin{bmatrix}
4 & -1 & 1 \\
-1 & 3 & 0 \\
1 & 0 & 2
\end{bmatrix}$$

$$U = \begin{bmatrix}
4 & -1 & 1 \\
0 & \frac{11}4 & \frac14 \\
0 & \frac14 & \frac74
\end{bmatrix},
L = \begin{bmatrix}
1 & 0 & 0 \\
-\frac14 & 1 & 0 \\
\frac14 & 0 & 1
\end{bmatrix}$$

$$U = \begin{bmatrix}
4 & -1 & 1 \\
0 & \frac{11}4 & \frac14 \\
0 & 0 & \frac{19}{11}
\end{bmatrix},
L = \begin{bmatrix}
1 & 0 & 0 \\
-\frac14 & 1 & 0 \\
\frac14 & \frac{1}{11} & 1
\end{bmatrix}$$

$$U = DL^T$$

$$D = \begin{bmatrix}
4 & 0 & 0 \\
0 & \frac{11}4 & \frac14 \\
0 & 0 & \frac{19}{11}
\end{bmatrix}$$


## 5. Hessenberg Matrix

### 5.a

```
A =

   1   4   2   3   9
   3   4   1   7   9
   0   2   3   4   9
   0   0   1   3   4
   0   0   0   4   5

L =

   1.00000   0.00000   0.00000   0.00000   0.00000
   3.00000   1.00000   0.00000   0.00000   0.00000
   0.00000  -0.25000   1.00000   0.00000   0.00000
   0.00000   0.00000   0.57143   1.00000   0.00000
   0.00000   0.00000   0.00000   4.00000   1.00000

U =

    1.00000    4.00000    2.00000    3.00000    9.00000
    0.00000   -8.00000   -5.00000   -2.00000  -18.00000
    0.00000    0.00000    1.75000    3.50000    4.50000
    0.00000    0.00000    0.00000    1.00000    1.42857
    0.00000    0.00000    0.00000    0.00000   -0.71429

L * U =

   1   4   2   3   9
   3   4   1   7   9
   0   2   3   4   9
   0   0   1   3   4
   0   0   0   4   5
```

### 5.b

$L$ has $1$ values along the diagonal, and first subdiagonal is
non-zero, but everything else is zero.

### 5.c

$$Ax = b, A = LU, LUx = b$$

If we solve this by first doing the $LU$ decomposition as specified above and
then doing backwards substitution and then forward subsitution we see that:

* $LU$ decomposition $=O(n^2)$
* Forward subsitution with $L$ $=O(n)$ since there's only one element other
  than the pivot per column.
* Backwards subsitution with $U$ $=O(n^2)$

Thus, the number of operations is $=O(n^2)$.

### 5.d

The sparsity pattern changes with partial pivoting. We can see this if we use
MatLab's `lu` function.

```m
[L, U] = lu(A)

L =

   0.33333   1.00000   0.00000   0.00000   0.00000
   1.00000   0.00000   0.00000   0.00000   0.00000
   0.00000   0.75000   1.00000   0.00000   0.00000
   0.00000   0.00000   0.57143   0.25000   1.00000
   0.00000   0.00000   0.00000   1.00000   0.00000

U =

   3.00000   4.00000   1.00000   7.00000   9.00000
   0.00000   2.66667   1.66667   0.66667   6.00000
   0.00000   0.00000   1.75000   3.50000   4.50000
   0.00000   0.00000   0.00000   4.00000   5.00000
   0.00000   0.00000   0.00000   0.00000   0.17857
```

Since partial pivoting operates row by row and there's only one entry below the
pivot per column that means each row only can be switched with the one below it.
Thus, there can be some 1 values on the diagonal above the middle.
