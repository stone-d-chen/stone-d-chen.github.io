---
title: Calculating the determinent of an equicovariance matrix
author: Stone
date: '2020-06-30'
tags:
  - math
slug: calculating-the-determinent-of-an-equicovariance-matrix
---


The goal is to find the determinant by re-writing `\(\Sigma\)` as a upper triangular matrix. Then

1. We add a new row and new column. Recall that the determinant can be defined recursively. Since the new matrix has a `\(1\)` in the `\(\Sigma_{11}\)` position, then the determinant remains the same.
2. We aim to eliminate the original off diagonals. We need to remove the lower diagonal for obvious reasons. The upper diagonal is so that we can eliminate the terms in the first column that show up.
3. Eliminate off-diagonals: Multiply the first row by `\(-\rho\sigma_1\)` and add it to the second row. This eliminates the original off diagonal elements of the original first row. Repeat.
4. Eliminate new terms in first column: Multiply second column by `\(\frac{\rho}{\sigma_1(1-\rho)}\)` and add to first column. Repeat.
5. Take the product of the diagonal.

`$$\begin{aligned}
\Sigma&=\left|\begin{array}{cccc}
\sigma_{11}^{2} & \rho \sigma_{1} \sigma_{2} & \cdots & \rho \sigma_{1} \sigma_{p} \\
\rho \sigma_{2} \sigma_{1} & \sigma_{22}^{2} & \cdots & \rho \sigma_{2} \sigma_{p} \\
\vdots & \vdots & \ddots & \vdots \\
\rho \sigma_{p} \sigma_{1} & \cdots & \cdots & \sigma_{p p}^{2}
\end{array}\right|\\
&=\left|\begin{array}{ccccc}
1 & \sigma_{1} & \sigma_{2} & \cdots & \sigma_{p} \\
0 & \sigma_{11}^{2} & \rho \sigma_{1} \sigma_{2} & \cdots & \rho \sigma_{1} \sigma_{p} \\
0 & \rho \sigma_{2} \sigma_{1} & \sigma_{22}^{2} & \cdots & \rho \sigma_{2} \sigma_{p} \\
\vdots & \vdots & \vdots & \ddots & \vdots \\
0 & \rho \sigma_{p} \sigma_{1} & \cdots & \cdots & \sigma_{p p}^{2}
\end{array}\right|\\
&=\left|\begin{array}{ccccc}
1 & \sigma_{1} & \sigma_{2} & \cdots & \sigma_{p} \\
-\rho \sigma_{1} & \sigma_{11}^{2}(1-\rho) & 0 & \cdots & 0 \\
-\rho \sigma_{2} & 0 & \sigma_{22}^{2}(1-\rho) & 0 & 0 \\
\vdots & \vdots & \vdots & \ddots & \vdots \\
-\rho \sigma_{p} & 0 & 0 & 0 & \sigma_{p p}^{2}
\end{array}\right|\\
&=\left| \begin{array}{ccccc}
1+\sum_{i=1}^{p} \frac{\rho}{(1-\rho)} &\sigma_{1} & \sigma_{2} & \cdots & \sigma_{p} \\
0 & \sigma_{11}^{2}(1-\rho) & 0 & \cdots & 0 \\
0 & 0 & \sigma_{22}^{2}(1-\rho) & 0 & 0 \\
\vdots & \vdots & \vdots & \ddots & \vdots \\
0 & 0 & 0 & 0 & \sigma_{p p}^{2}
\end{array}\right|\\
&=\left(1+\sum_{i=1}^{p} \frac{\rho}{(1-\rho)}\right)\left((1-\rho)^{p} \prod_{i=1}^{p} \sigma_{i i}^{2}\right)
\end{aligned}$$`

