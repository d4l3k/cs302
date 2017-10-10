# CPSC 302 - Assignment 2

Tristan Rice, q7w9a, 25886145

## 1

### 1.a

![](./1.a.png)\



### 1.b

#### 1.b.i

This is valid since the function is continuous on the interval, and one side is
less than 0 and one side greater. Thus, bisection works just fine.

![](./1.b.i.png)\


TODO: comment on convergence

#### 1.b.ii

Existence:

* $g(0.5) = 0.56438 \geq 0.5$
* $g(0.6) = 0.56656 \leq 0.6$

Uniqueness: The derivative $g'(x) = \frac{x+\log x}{(x+1)^2}$ exists and there is a constant $\rho < 1$ between $0.5,0.6$.

Thus, the fixed point theorem holds and there is only one fixed point in the
range $[0.5, 0.6]$.

![](./1.b.ii.png)\


TODO: comment on convergence

#### 1.b.iii

![](./1.b.iii.png)\


TODO: comment on convergence

#### 1.b.iiii

![](./1.b.iiii.png)\


TODO: comment on convergence

## 2

### 2.a

$$x^2+\frac{3}{16} = x$$
$$x^2-x+\frac{3}{16} = 0$$
$$x=\{\frac14, \frac34\}$$

### 2.b

$$f'(x) = 2x$$

You can be sure that $\frac14$ will converge using fixed point iteration since
the magnitude of the slope is less than $1$. $f'(\frac34)=\frac32$.

### 2.c

Need to find $\rho$.

$$\rho^n = 100$$.
$$n = \frac{\log 100}{\log \rho}$$
$$|x_k^2+\frac{3}{16} - (x^*)^2 - \frac{3}{16}| \leq \rho |x_k - x^*|$$
$$|x_k^2 - (x^*)^2| \leq \rho |x_k - x^*|$$



## 3

### 3.a

### 3.b

### 3.c

## 4

### 4.a

### 4.b
