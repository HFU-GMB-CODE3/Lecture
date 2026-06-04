+++
title = 'Interaction and textures in WebGL'
draft = false
weight = 60 
+++

## Goals

Control the cube rotation with the mouse and add a texture to the cube.

## Plan

- Add slider and mouse controls to the cube demo
- Take a closer look at the 3D transformations
- Add a texture to the cube

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
  - [Interactive cube](files/CODE3-07-Interaction.pdf)
  - [Textures](files/CODE3-08-Textures.pdf)

## List of things to implement extending the cube 3D demo with interaction and textures

In the following, some tasks are listed that need to be implemented in order to better understand the implemented code.

### Simple

(small and easy code changes)

- [ ] Change the **sensitivity** of the interactive rotation
- [ ] Change the position of the cube to the top left of the canvas by modifying the **viewport**
- [ ] Change the texture of the cube (you can use any image you want, but make sure to update the texture coordinates accordingly)
- [ ] Switch between two different textures on the cube by pressing a key (e.g., the space bar)

### Complex

(needs new functions)

- [ ] Add mouse control to rotate the cube.
  - **HINT**: You can use the mousedown, mouseup and mousemove events to get the mouse position and update the rotation accordingly. Note that you only need to update the sliders when the mouse is moved. They control the rotation of the cube.
- [ ] Add mouse wheel control to zoom in and out of the cube
- [ ] Update the texture coordinates so that the texture is only drawn on one face of the cube
- [ ] Add a second texture to the cube and blend it with the first texture in the fragment shader (e.g., using a simple average)

## Insights

- TBD
