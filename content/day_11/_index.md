+++
title = 'Exam Submission'
draft = false
weight = 110
+++

## Learning Objectives

To pass this modules Examn, you have to show that you are 

- Capable of procedurally generating 3D geometry
- Capable of setting up the rendering pipeline to transform vertices
- Capable of setting up the rendering pipieline to calcuate pixel colors

## Assignment

To prove you meet the learning objectives,

### EITHER, IN WebGL/JavaScript

- procedurally generate mesh geometry other than a cube (e.g., a cylinder)

- AND EITHER
  - re-build the Godot Toon Shader in WebGL/JavaScript

- OR

  - Create a shader combining texture coloring and light calculation as individually treated in the WebGL/JS lectures

### OR, IN Godot

- procedurally create geometry other than a Cylinder using an `ArrayMesh`.
- Create a Shader varying vertex positions and color in a cyclic way over `TIME`.
- As examples, consider
  - A mesh geometry made out of simple grassleaeves (each made out of four triangles) arranged on a rectangular grid. A vertex shader making each grass leave wave by positioning each vertex in the x-z axis and controlling the degree of movement by its y-coordinate. A fragment shader that accompanies the grass' waving movement by cycling through different shades of green.
  - A mesh geoemetry forming a regular grid of quadrilaterally shaped pairs of triangles. A vertex shader applying sin and cos movement on the y-axis of the geometry to form water-like waves. A fragment shader accompanying the wave movement with different shades of blue.
  
  
WebGL/JS
- Geometrie other than Würfel 

- Zylinder in JS erstellen
- Toon-Shader nachbauen
Alternativ
- Textur und Beleuchtung zusammen bringen 



