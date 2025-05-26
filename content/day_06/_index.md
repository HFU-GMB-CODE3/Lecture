+++
title = 'Lighting'
date = 2024-09-28T15:27:29+02:00
draft = false
weight = 60
+++

## Goal

We first restructure the code to better understand the transformations. Then we add controls to interact with the cube. After that, we add a light source and implement basic lighting calculations.

## Assignment

**Use the repository from last time and follow the instructions in the slides:**

![eyes](https://github.githubassets.com/images/icons/emoji/unicode/1f440.png?v8) means that the code is already in the repository and you just need to look at it.

![clipboard](https://github.githubassets.com/images/icons/emoji/unicode/1f4cb.png?v8) means you can copy-paste the code and it should work.

![memo](https://github.githubassets.com/images/icons/emoji/unicode/1f4dd.png?v8) means that you need to create a new file

![o](https://github.githubassets.com/images/icons/emoji/unicode/2b55.png?v8) indicates that you need to do more than just copy-paste the code.

**In any case you need to understand what you are doing.**

## Material
  
- Slides:
  - [Interactive cube in WebGL](files/CODE3-04-InteractiveCube.pdf)
  - [Illuminated cube in WebGL](files/CODE3-05-ShadedCube.pdf)
- Utils for WebGL: [resources.zip](files/resources.zip) and [utils.zip](files/utils.zip) (new content!)
- Web links:
  - [The Magic of the LookAt Matrix by Carmen Cincotti](https://medium.com/@carmencincotti/lets-look-at-magic-lookat-matrices-c77e53ebdf78)
  - [WebGL2 Fundamentals - 3D Cameras](https://webgl2fundamentals.org/webgl/lessons/webgl-3d-camera.html)
  - [WebGL2 Fundamentals - Point Lighting](https://webgl2fundamentals.org/webgl/lessons/webgl-3d-lighting-point.html)
  - [Gouraud and Phong Shading Demo](https://www.cs.toronto.edu/~jacobson/phong-demo/)

## Tasks (for the "Interactive cube" demo)

In the following, some tasks are listed that need to be implemented in order to better understand the implemented code.

### Simple

(small and easy code changes)

- [ ] Change the **position** of the cube by modifying the **model** matrix
- [ ] Change the **camera** so that the cube is viewed from the top
- [ ] Change the rotation speed of the cube (the impact of the mouse or sliders needs to be changed)
- [ ] Experiment with the mouse controls and observe how the cube rotates. Why does it not always rotate in the same direction as the mouse is moved?

### Complex

(needs new functions)

- [ ] Add mouse wheel support to zoom in and out of the cube.
- [ ] Draw a thousand cubes instead of one. Take care that all cubes are rotated simultaneously.
- [ ] Change the camera to an **orthographic** camera (check [webgl-camera](https://webgl2fundamentals.org/webgl/lessons/webgl-camera.html) for help)

## Tasks (for the "Illuminated cube" demo)

In the following, some tasks are listed that need to be implemented in order to better understand the implemented code.

### Simple

(small and easy code changes)

- [ ] Change the **position** of the light sources
- [ ] Change the **camera** and observe the highlights on the cube
- [ ] Change the **color** of the light sources
- [ ] Add checkboxes to turn lighting on and off

### Complex

(needs new functions)

- [ ] Add more light sources to the scene.
- [ ] Animate the light sources so that they move around the cube.
- [ ] Add a slider to control the intensity of the light sources.
- [ ] Add some control to change the color of the light sources.

## Questions

- TBD

## Material
  
- TBD
 
## Insights

- TBD
