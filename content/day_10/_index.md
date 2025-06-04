+++
title = 'Textures'
date = 2024-09-28T15:27:29+02:00
draft = false
weight = 100
+++

## Goal

We now add a texture to all faces of our cube.

## Assignment

**Use the repository from last time and follow the instructions in the slides:**

![eyes](https://github.githubassets.com/images/icons/emoji/unicode/1f440.png?v8) means that the code is already in the repository and you just need to look at it.

![clipboard](https://github.githubassets.com/images/icons/emoji/unicode/1f4cb.png?v8) means you can copy-paste the code and it should work.

![memo](https://github.githubassets.com/images/icons/emoji/unicode/1f4dd.png?v8) means that you need to create a new file

![o](https://github.githubassets.com/images/icons/emoji/unicode/2b55.png?v8) indicates that you need to do more than just copy-paste the code.

**In any case you need to understand what you are doing.**

## Material

- Videos:
  - [Texture mapping in GLSL](https://www.youtube.com/watch?v=hR8QecN9plE&list=PL8vNj3osX2PzZ-cNSqhA8G6C1-Li5-Ck8&index=5) by Thorsten Thormählen.
- Slides:
  - [Textured cube in WebGL](files/CODE3-Textures.pdf)
  
- Web links:
  - [WebGL2 Fundamentals - Textures](https://webgl2fundamentals.org/webgl/lessons/webgl-3d-textures.html)
  
## Tasks (for the "Textured cube" demo)

In the following, some tasks are listed that need to be implemented in order to better understand the implemented code.

### Simple

(small and easy code changes)

- [ ] Change the **texture** by using a different image file.
- [ ] Use texture coordinates larger than 1.0 to repeat the texture on the cube.
- [ ] Change the `TEXTURE_WRAP_S` and `TEXTURE_WRAP_T` parameters to `CLAMP_TO_EDGE` or `MIRROR_REPEAT` and observe the difference.
- [ ] Assign the texture coordinates as color using `outColor = vec4(vTexcoord.s, vTexcoord.t, 0.0f, 1.0f);` in the fragment shader. This will help you understand how texture coordinates are mapped to the cube's surface.
- [ ] Change the appearance of the texture by modifying the texture color using a variable in the fragment shader, e.g., `vec3 texColor = texture(uTexture, vTexcoord);`. Then modify this variable before assigning it to `outColor`.

### Complex

- [ ] Use different texture coordinates so that each side of the cube looks different. Try to map this texture to the cube: [Dice Texture](https://www.mathematik.uni-marburg.de/~thormae/lectures/graphics1/code_v2/Texture/java/dice_texture.png). You might start with these coded textures for debugging: [UV Test](https://jbouny.github.io/texturing-intro-slides/iframes/resources/original/uv-test.png), [UV Checker Map](https://commons.wikimedia.org/wiki/File:UV_checker_Map_byValle.jpg).
- [ ] Load two different textures and switch between them using a key press (e.g., spacebar).

## Insights

- TBD
