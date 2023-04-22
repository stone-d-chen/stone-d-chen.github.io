---
title: Declarations in C++ & Const as a Promise - notes
author: Stone Chen
date: '2023-04-22'
categories:
  - programming
tags:
  - cpp
  - programming
  - backtobasics
slug: const-as-a-promise-notes
---

[Back to Basics: Const as a Promise - Dan Saks - CppCon 2019](https://www.youtube.com/watch?v=NZtr93iL3R0)

[Back to Basics: Declarations in C++ - Ben Saks - CppCon 2022](https://www.youtube.com/watch?v=IK4GhjmSC6w)

## Program Entities

A declared named can have properties such as: type, scope, storage duration, linkage.

This is a *function declaration*, it lacks a function body so it's not a definition.

``` cpp
int foo(int n) //non-defining declaration
```

-   it tells the compiler how to generate code that calls this function.
-   it doesn't tell the compiler enough information to generate the function code

An object declaration is also a definition (unless it contains an extern specifier and no initializer)

``` cpp

int i;             // definition
extern int ;       // non-defining declaration
entern int k = 42; // definition
```

-   an object definition *allocates storage*

## The Structure of Declarations

Every object and function declaration has two main parts

-   a sequence of **declaration specifiers**
-   a **declarator**

``` cpp
static unsigned long int *x[N]
```

-   the declarator `*x[n]`
-   the rest are specifiers

A declaration specifier can be a type specifier or non-type specifiers

A declarator is a declarator-id, possibly surrounded by operators (from lowest to highest precedence):

-   `*` means pointer
-   `&` means reference
-   `[]` means array
-   `()` means function or grouping

So `*x[N]` is an "array with N elements of type pointer"

`*f(int)` is a function that takes an `int` and returns a `*`

`(*f)(int)` is a pointer to a function with type `int` returning `…` something

## Type vs Non-type specifiers

Type specifiers modify other type specifiers

Non-type specifiers apply directly to the declarator-id

`const` can be a type specifier so

``` cpp
const int *v[N]
```

-   v is an array of type pointers to const int

`const` can also appear in the declarator

``` cpp
int *const v[N]
```

is modifying the pointer.

Advice: write const to the immediate right of the type specifier or operator that you want to modify.

Example:

"array of N const pointers to volatile uint32_t"

-   uint32_t \*x[N]

-   uint32_t volatile \*const x[N]
