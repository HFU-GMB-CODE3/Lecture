+++
title = 'The Rendering Pipeline'
draft = true
weight = 1020 
+++

## Goals

Render one triangle on the screen using WebGL.

## Assignment



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
