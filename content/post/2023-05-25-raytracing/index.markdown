---
title: Raytracing
author: Stone Chen
date: '2023-05-25'
slug: raytracing
categories:
  - programming
tags:
  - c
  - 3d rendering
  - cpp
---

## Raycasting basics

1.  Be able to draw pixels to a buffer / screen
2.  Create types for the world, spheres, planes, materials
3.  Initialize a world with objects
4.  Create a Camera + camera axis system
5.  Create a film in front of the plane and shoot rays through it.
6.  Cast rays into the world and determine if there's a hit or not
7.  Implement multiple bounces
8.  Implement Emit / Ref / Attenuation etc

## Multithreading stuff

1.  Introduce a function called RenderTile() which want to take the range of X & Y that it will actually use. Also will need to be smarter about writing out to the image. CM uses XMin, YMin, OnePastXMax, OnePastYMax, World, Image
    1.  Then Ran it from 0, Image.Width, 0, Image.Height

    2.  Run loop to call it in tiles
2.  World Structure gets bounces computed + tiles retired
3.  work_queue and work_order introduction
    1.  work_queue stores a work_order count and work_order \*

    2.  work_order stores the original parameters
4.  Loop now constructs work_orders
5.  Add another loop that calls rendertile with queue + original parameters
6.  Refactor rendertile to only take the Queue
    1.  I think because CreateThread only takes a single parameter
