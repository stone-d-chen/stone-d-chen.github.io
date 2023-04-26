---
title: Modern C Book Club - Session 1 Exercises
author: Stone
date: '2023-04-26'
slug: modern-c-book-club-session-1-exercises
categories:
  - programming
tags:
  - c
---

<https://github.com/r-devel/c-book-club/tree/main/exercises/Session%201>

## Part 1 - C Fundamental

Consider the following. What are the directives and statements in the program?

Directives, I think are [preprocessor directives,](https://learn.microsoft.com/en-us/cpp/preprocessor/preprocessor-directives?view=msvc-170) which talks to the pre-processor before comilation and tell it to change the source of the program.

In this case it's `#include <stdio.h>` which tells the pre-processor to dump in the text from `<stdio.h>` which will be found in [global include paths](https://stackoverflow.com/questions/5191009/what-is-the-difference-between-and-when-a-header-file-is-included-in-a-pro).

Statements on the other hand tell the computer to do something. So here

-   `int main(void)` (apparently these are not considered statements)

-   `printf()`

-   `return 0`

are all statements?

``` c
#include <stdio.h>
int main(void)
{
    printf("Parkinson's Law:\nWork expands so as to ");
    printf("fill the time\n");
    printf("available for its completion.\n");
    return 0;
}
```

3\) Condense `dweight.c` program by replacing assignments with initializers, removing the weight variable and calculating it inside the print statemen

Creating a few versions + one I considered kind of horrific `int a = 1, b = 2`,...but turns out that was the answer given.

``` c
#include <stdio.h>

int main(void)
{
//   int height, length, width, volume, weight;

//   height = 8;
//   length = 12;
//   width = 10;
//   volume = height * length * width;
//   weight = (volume + 165) / 166;


//   int height = 8;
//   int length = 12;
//   int width = 10;
//   int volume = height * length * width;
//   int weight = (volume + 165) / 166;

//   int height = 8, length = 12, width = 10, volume = height * length * width, weight = (volume + 165) / 166;
  int height = 8, length = 12, width = 10, volume = height * length * width;

  printf("Dimensions: %dx%dx%d\n", length, width, height);
  printf("Volume (cubic inches): %d\n", volume);
  printf("Dimensional weight (pounds): %d\n", (volume + 165) / 166);

  return 0;
}  
```

4\) This one was interesting, I mostly got 0s or -0s...

5\) Which are not legal C identifiers? `100_bottles, _100_bottles, one__hundred__bottles, bottles_by_the_hundred` ?

Turns just `100_bottles` thought `_100_bottles` would be illegal but it is! probably because it's illegal in R.

6\) Multiple adjacent underscores are hard to read / tell them apart

7\) `for, while` the rest are not keywords

8\) 14 Tokens

9\) Write a program that computes the volume of a sphere with a 10-m radius. Write the fraction `4/3` as `4.0f/3.0f` . Try writing it as `4/3`.

`#include <math.h>` works but `M_PI` doesn't show up in vscode. `#define _USE_MATH_DEFINES` makes it show up in the auto-complete.

``` c
#include <stdio.h>
#define _USE_MATH_DEFINES
#include <math.h>

void q6(void)
{
    //v = 4/3 pi r^3

    float v = (float) 4/3 * M_PI * pow(10.0, 3.0);
    printf("\n 4/3 = %f \n", (float) 4/3);
    printf("\n vol = %f \n", v);
    printf("\n vol = %f \n", pow(10, 3));
}
```
