![](../rainbow.png)\


# CPSC 302 - Assignment 4

Tristan Rice, q7w9a, 25886145

## 1. Data Fitting

### 1.a

The equation $u(t)$ isn't linear, thus you can't find a perfect match using
linear least squares.

### 1.b

We're trying to solve for $v(t)=x_1 + x_2t$.

Normal equations: $$X^TXb=X^Ty$$

$$X=\begin{bmatrix}
1 & 0.0 \\
1 & 1.0 \\
1 & 2.0
\end{bmatrix}$$

$$y = \begin{bmatrix}
0.1 \\
0.9 \\
2
\end{bmatrix}$$


Solving the normal equations gives us
$$b=\begin{bmatrix}
0.05 \\
0.95
\end{bmatrix}$$

$$v(t) = 0.05 + 0.95t$$

$$u(t) = e^{v(t)} = e^{0.05 + 0.95t}$$
$$u(t) = e^{v(t)} = e^{0.05}e^{0.95t}$$
$$u(t) = 1.0512711e^{0.95t}$$


## 2. Classical Gram-Schmidt vs. Modified Gram-Schmidt

$$A=\begin{bmatrix}
1 & 1 & 1 \\
\epsilon & 0 & 0 \\
0 & \epsilon & 0 \\
0 & 0 & \epsilon
\end{bmatrix}$$

Since we have a 4x3 matrix, we can decompose it into a 4x3 matrix and a 3x3
matrix.

$$A=\begin{bmatrix}
\frac{1}{\sqrt{1 + \epsilon^2}} & 0 & 1 \\
\frac{\epsilon}{\sqrt{1 + \epsilon^2}} & 0 & 0 \\
0 & 0 & 0 \\
0 & 0 & \epsilon
\end{bmatrix}
\begin{bmatrix}
\sqrt{1 + \epsilon^2} & \epsilon & \epsilon \\
0 & 0 & 0 \\
0 & 0 & 0
\end{bmatrix}$$

## 3. Comparison of Algorithms

## 4. Regularization

## 5. Compressing Image Information
