+++
title = '3D Rendering in WebGL'
draft = false
weight = 40
+++

## Goals

- Understand how the WebGL 3D rendering pipeline works and what happens in it in detail.
- Implement a flat shaded cube with rotation animation and perspective camera

## Plan

- 3D rendering in theory: what happens to two triangles in the rendering pipeline?
- Hello 3D in WebGL: implementing th rendering of those two triangles in WebGL
- A 3D cube in WebGL: extending the two triangles to a cube
- Transformations in WebGL: adding rotation and perspective camera to the cube

## Assignment

**Use the repository from last time and follow the instructions in the slides:**

![eyes](https://github.githubassets.com/images/icons/emoji/unicode/1f440.png?v8) means that the code is already in the repository and you just need to look at it.

![clipboard](https://github.githubassets.com/images/icons/emoji/unicode/1f4cb.png?v8) means you can copy-paste the code and it should work.

![memo](https://github.githubassets.com/images/icons/emoji/unicode/1f4dd.png?v8) means that you need to create a new file

![o](https://github.githubassets.com/images/icons/emoji/unicode/2b55.png?v8) indicates that you need to do more than just copy-paste the code.

![x](https://github.githubassets.com/images/icons/emoji/unicode/274c.png?v8) indicates that you need to replace the old code with something new.

**In any case you need to understand what you are doing.**

## Material
  
- Slides:
  - [Theory: 3D Rendering](files/CODE3-03-3DRendering.pdf)
  - [Hello 3D in WebGL](files/CODE3-04-Hello3DWebGL.pdf)
  - [A 3D cube in WebGL](files/CODE3-05-Cube.pdf)
  - [Transformations in 3D](files/CODE3-06-Transformations.pdf)
  - [Zusätzliche Folien zu 3D-Transformationen aus einer anderen Vorlesung](files/MathMKB-06-Transformation.pdf)

## List of things to implement extending the cube 3D demo

In the following, some tasks are listed that need to be implemented in order to better understand the implemented code.

### Simple

(small and easy code changes)

- [ ] Change the **size** of the cube
- [ ] Change the **color** of the cube
- [ ] Change the position of the cube to the top left of the canvas by modifying the **viewport**
- [ ] Change the rotation speed of the cube

### Complex

(needs new functions)

- [ ] Change the color of the cube so that each edge has the same color on both adjacent faces, but there is a color gradient on each face.
- [ ] Let the cube pulsate (change its size) in a sinusoidal way.
- [ ] Draw a thousand cubes instead of one.
- [ ] Change the perspective of the camera (check [webgl-camera](https://webgl2fundamentals.org/webgl/lessons/webgl-3d-camera.html) for help)
- [ ] Change the second parameter in the `gl.uniformMatrix4fv(modelMatrixLocation, false, modelViewMatrix);` function call to `true` and check the result.
- [ ] Change the camera to an **orthographic** camera (check [gl-matrix](https://glmatrix.net/docs/module-mat4.html) for a helper function)

## Insights

- TBD
