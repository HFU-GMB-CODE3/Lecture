+++
title = 'The Rendering Pipeline'
date = 2025-05-15T00:00:00+02:00
draft = false
weight = 20 
+++

## Goals

Render one triangle on the screen using WebGL.

## Assignment

**Use the repository from last time and follow the instructions in the slides:**

![eyes](https://github.githubassets.com/images/icons/emoji/unicode/1f440.png?v8) means that the code is already in the repository and you just need to look at it.

![clipboard](https://github.githubassets.com/images/icons/emoji/unicode/1f4cb.png?v8) means you can copy-paste the code and it should work.

![memo](https://github.githubassets.com/images/icons/emoji/unicode/1f4dd.png?v8) means that you need to create a new file

![o](https://github.githubassets.com/images/icons/emoji/unicode/2b55.png?v8) indicates that you need to do more than just copy-paste the code.

**In any case you need to understand what you are doing.**

## Material
  
- Slides:
  - [Hello World in WebGL](files/CODE3-01-HelloWorld.pdf)
  - [Hello 3D in WebGL](files/CODE3-02-Hello3D.pdf)
  - [Following the Rendering Pipeline](files/CODE3-03-RenderingPipeline.pdf)
- Utils for WebGL: [utils.zip](files/utils.zip)

## Tasks (for the "Hello WebGL" demo)

In the following, some tasks are listed that need to be implemented in order to better understand the implemented code.

### Simple

(small and easy code changes)

- [ ] Change the **size** of the triangle
- [ ] Change the **color** of the triangle
- [ ] Change the color of the **background**

### Complex

(needs new functions)

- [ ] Render the triangles as **points** (check [webgl-points-lines-triangles](https://webgl2fundamentals.org/webgl/lessons/webgl-points-lines-triangles.html) for help)
- [ ] Render the triangles as **lines** (check [webgl-points-lines-triangles](https://webgl2fundamentals.org/webgl/lessons/webgl-points-lines-triangles.html) for help)
- [ ] Draw one thousand triangles instead of one.

## Tasks (for the "Hello 3D" demo)

In the following, some tasks are listed that need to be implemented in order to better understand the implemented code.

### Simple

(small and easy code changes)

- [ ] Change the **size** of the triangles
- [ ] Change the **color** of the triangles
- [ ] Change the color of the **background**

### Complex

(needs new functions)

- [ ] Render the triangles as **points** (check [webgl-points-lines-triangles](https://webgl2fundamentals.org/webgl/lessons/webgl-points-lines-triangles.html) for help)
- [ ] Render the triangles as **lines** (check [webgl-points-lines-triangles](https://webgl2fundamentals.org/webgl/lessons/webgl-points-lines-triangles.html) for help)
- [ ] Change the perspective of the camera (check [webgl-camera](https://webgl2fundamentals.org/webgl/lessons/webgl-3d-camera.html) for help)
- [ ] Change the second parameter in the `gl.uniformMatrix4fv(modelMatrixLocation, false, modelViewMatrix);` function call to `true` and check the result.
- [ ] Draw one thousand triangles instead of two.

## Insights

- It took 90 minutes to implement the first [demo](files/CODE3-01-HelloWorld.pdf)
- Also the second [demo](files/CODE3-02-Hello3D.pdf) took about 90 minutes to implement and before that the theory was explained along the [Following the Rendering Pipeline](files/CODE3-03-RenderingPipeline.pdf) slides.
