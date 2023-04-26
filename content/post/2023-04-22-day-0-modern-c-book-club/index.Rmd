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

[Windows from Source](https://contributor.r-project.org/rdevguide/GetStart.html#windowsSource)

[Rtools43 for Windows](https://cran.r-project.org/bin/windows/Rtools/rtools43/rtools.html)

Rtools43 is incompatible with previous versions since it relies on UCRT and not MSVCRT[^1]

[^1]: [differences between them](<https://stackoverflow.com/questions/67848972/differences-between-msvcrt-ucrt-and-vcruntime-libraries>)

-   Rtools43 consists of Msys2 build tools, GCC 12/MinGW-w64 compiler toolchain, libraries built using the toolchain, and QPDF. Rtools43 supports 64-bit Windows and UCRT as the C runtime.

    -   **MSYS2** is a collection of tools and libraries providing you with an easy-to-use environment for building, installing and running native Windows software.

    -   MSYS2 provides up-to-date native builds for GCC, mingw-w64, CPython, CMake, Meson, OpenSSL, FFmpeg, Rust, Ruby, just to name a few.

    -   [GCC](https://gcc.gnu.org/) (GNU Compiler Collection) is a free and open source compiler for C and C++ (and other languages like Objective-C, Fortran, D).\
        [MinGW-w64](http://mingw-w64.org/) is a free and open source C library for targetting Windows 32-bit and 64-bit platforms.\
        The combination of these results in a free C/C++ compiler for Windows.



        I think I need to manually make this

        Retrieve the latest source code via subversion:

            export TOP_SRCDIR="$HOME/Downloads/R"
            svn checkout https://svn.r-project.org/R/trunk/ "$TOP_SRCDIR"

        I

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

