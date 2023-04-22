---
title: 'Day 0: Modern C Book Club (draft)'
author: Stone Chen
date: '2023-04-22'
slug: day-0-modern-c-book-club
categories:
  - programming
tags:
  - c
  - R
---

The R Contributors community is running a [book club on Modern C](https://github.com/r-devel/c-book-club/)

This will be notes on chapter 1-3

## Getting Started (C1)

### Compiling and Running

So the book definitely assume that we're running MacOS or Linux which is a bit problematic for me on windows...I think I just probably just figure out the correct R windows toolchain sooner rather than later...

## The principle structure of a program (C2)

### Grammar

-   special words
-   punctuation
-   comments
-   literals
-   functions
-   operators

### Declarations and Definitions

Declarations do not specify the value OR where it can be found. Just what an identifier is supposed to represent.

``` cpp
int main(void);
double A[5];
size_t i;
```

Above is given as an example though I think it's incorrect. The first is because it let's the program figure out how to call main but does not define it. The second and 3rd are not because it actually allocates space at that time. You'd need to `extern` them. This could be specific to C++ though.
