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

TODO

### 1.c

We first need to figure out for which $j$ is the maximum and minimum of
$\cos(\frac{\pi j}{n+1}$. $a,b$ are both positive so they don't affect the sign.

$$\cos(\frac{\pi}{n+1}) \approx 1$$
$$\cos(\frac{n\pi}{n+1}) \approx -1$$

$$\max_{j=1,\ldots,n} = a+2b$$
$$\min_{j=1,\ldots,n} = a-2b$$

$$\kappa_2(A) = \frac{a+2b}{a-2b}$$

## 2. Tridiagonal Systems of Equations

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

### 3.c

$$C=\begin{bmatrix}
2 & 0 & 0 \\
1 & \sqrt 5 & 0 \\
1 &  \sqrt{\frac 15} &  \sqrt{\frac{19}5}
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

### 5.b

### 5.c

### 5.d

