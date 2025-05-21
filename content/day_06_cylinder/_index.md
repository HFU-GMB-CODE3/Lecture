+++
title = 'Cylinder'
date = 2024-09-28T15:27:29+02:00
draft = false
weight = 60
+++

## Goals

Flat and rounded surfaces with normals. A cylinder generated in code. In Godot.

- Understand how procedural geometry can be created within a game engine
- Grasp how geometry data is structured
- Improve coding skills


## Background


### Meshes

In game engines as well as in content creation/3D modelling tools such as blender the term _mesh_ represents three-dimensional geometry. 

#### Meshes in 3D Content Creation Software vs Meshes in Game Engines

With some knowledge in creating meshes in blender we remember that they are made out of vertices (singular: vertex), edges and faces. 

- Vertices are positions in three-dimensional spaces
- Edges always connect two vertices, and 
- Faces are bound by edges and spanned by vertices. Faces are the visible part of the geometry when a mesh is rendered. The number of vertices (and edges) a face is made of can vary: triangles, quadrilaterals (_quads_) and polygons with more than four vertices (_n-gons_) are possible.

Mesh editing features such as _loop cut_, _dissolve_, _extrude_, _bevel_, _boolean_, just to name a few, must be able to perform quickly and interactively even on large mesh geometries with huge numbers of vertices, edges and faces.

For that reason, 3D content creation software stores mesh geometry in a way that explicitly keeps adjacency information. That way, queries such as _"which vertices is a given face made of"_, _"which edges belong to a given face"_, _"what faces/edges are connected to a given vertex"_ etc. can be answered in short time without searching through the entire mesh geometry for each query. 

Storage schemes allowing this kind of information retrieval are complex and will not be covered in this lesson.

#### Meshes in Game Engines

Most game engines do not allow mesh geometry to be edited and altered as profoundly as in content creation software. The main purpose mesh geometry serves in a game engine is to be rendered in a fast and efficient way. Thus the way geometry data is stored in a game engine is highly optimized on how the underlying rendering hardware (the _GPU_) expects and processes geometry. In contrast to content creation tools, most game engines store geometry as a set of vertices and triangular faces. 

- Vertices are (at least) positions in space. They can contain additional information such as 
  - UVs (texture coordinates)
  - Normals 
- Faces in game engines are (with minor exceptions) always triangular - three vertices span one triangle (_tri_). Some older GPU software interfaces can additionaly display quads (made of four vertices) or lines (two vertices) instead of tris. 

#### Meshes in Godot

Godot stores 3D Meshes in instances of the [`Mesh`](https://docs.godotengine.org/en/stable/classes/class_mesh.html#class-mesh) class, serving as a property of [`MeshInstance3D`](https://docs.godotengine.org/en/stable/classes/class_meshinstance3d.html#class-meshinstance3d) located in the scene graph. 

As godot project editors, we cannot look into the contents of a `Mesh` instance directly. Most Mesh objects are imported as 3D Geometry from a 3D editing program. To create mesh geometry in GDScript code, we can use a child class of Mesh: the [`ArrayMesh`](https://docs.godotengine.org/en/stable/classes/class_arraymesh.html#class-arraymesh) class. Instancess of `ArrayMesh` can be used at all places where Mesh instances are required, e. g. as part of a `MeshInstance3D` scene graph object. 

If we want to understand how mesh data is kept internal, close-to-GPU parts of a game engine, we can look a the way we need to organize mesh data in an `ArrayMesh` instance.



## Assignment

### 1. A Triangle

#### 🔧 TODO

- In the Godot Editor, add a `MeshInstance3D` object object to your turntable scene and add a new  [`ArrayMesh`](https://docs.godotengine.org/en/stable/classes/class_arraymesh.html#class-arraymesh) to its [`Mesh`  property](https://docs.godotengine.org/en/stable/classes/class_meshinstance3d.html#class-meshinstance3d-property-mesh) in the Inspector. 
- Make sure the object is placed centered on top of the turntable although it does not yet contain any visible geometry.
- Attach a new GDScript to the `MeshInstance3D` object.
- Add a simple triangle in the code's `_ready()` function according to the example code provided in the [`ArrayMesh` documentation](https://docs.godotengine.org/en/stable/classes/class_arraymesh.html#description). Other than the code found there,
  - DO NOT create new instances of `ArrayMesh` and `MeshInstance3D` (DON'T CALL `ArrayMesh.new()` or `MeshInstance3D.new()`). Your code is already part of a `MeshInstance3D` object and its `mesh` property already contains an instantiated `ArrayMesh`. 
- Your code should look like this:

    ```python 
    func _ready():
      var vertices = PackedVector3Array()
      vertices.push_back(Vector3(0, 0.3, 0))
      vertices.push_back(Vector3(0.3, 0, 0))
      vertices.push_back(Vector3(0, 0, 0.3))

      # Initialize and arrange the data for the single surface
      var arrays = []
      arrays.resize(Mesh.ARRAY_MAX)
      arrays[Mesh.ARRAY_VERTEX] = vertices

      # Add the data as a surface to the ArrayMesh stored in the mesh property
      mesh.add_surface_from_arrays(Mesh.PRIMITIVE_TRIANGLES, arrays)	
    ```

- Make sure that you can see the triangle when running your turntable application. You might need to turn the table to make the triangle appear.
- Toy around with different vertex positions of the triangle!
- Add three more triangles to define two sides of a cube: two triangles for one of the front 
sides and two triangles for the top. If you cannot figure out the 3D coordinates of the vertices: Draw a scribble of what you intend to create in a 3D coordinate system!



#### 💡Insights

- What is a `PackedVector3Array`?
- Draw an image how the `vertices` array is a part of the `arrays` array.
- Why is the triangle shown only from one side? What happens if you exchange two of the three vertices within the `vertices` array?
- What coordinate system are the vertex-coordinates in? How are they affected by the `MeshInstance3D`'s transform properties?
- Why can't we see a color difference in the two sides of the cube?


### 2. Normals and Indices

Start with the above mentioned two sides of a cube: Your `vertices` array should contain 12 entries (= 4 triangles, = 2 squares).

#### 🔧 TODO Normals

- Add another `PackedVector3Array` named `normals` to the surface `arrays` and store it at the index `Mesh.ARRAY_NORMAL` array position.
- Add (using `push_back`) the same number of normal vectors to the `normals` array as there are vertices vectors in the `vertices` array.
- Choose the normals for the upwards-looking triangles to direct along the positive Y-axis
- Choose the normals for the sidewards-looking triangles to direct into the triangles' direction.

#### 💡Insights

- What are the correct normal directions?
- Each of the two faces consist of two triangles. For each of the faces: How can we re-use the four vertices and four normals to define two triangles spanning them?
- Why do we need 12 entries in the vertices and normals array although there are only 8 different combinations of normals/vertices and only six different positions?

#### 🔧 TODO Indices

- Add a `PackedInt32Array` named `indices` to the surface `arrays` and store it at the index `Mesh.ARRAY_INDEX` array position.
- Reduce the vertices and the normals arrays to contain only eight (instead of 12) entries
- Create a list of indices into the vertices and normals arrays with three consecutive indices making up a triangle. Store that index list in the `indices` array.
- Make sure your two squares look like before.

### 3. A Disc

#### 💡Think! Draw! Think again!

- Imagine a disc made out of triangles with each triangle spanning the disc's center point and two vertices on the disc's rim. Let's call such a triangle, wich could be seen as a slice of a pizza or a cake, a *segment*.
- In this exercise, we want to create an algorithm that takes the count of segments as an input parameter and builds a disc shaped surface made out of `segments` triangles. For example: Build a disc out of 8 segments (8 pizza slices).
- For a given `segments` value: How many vertices, normals and indices will you need?
- To create the disc within the X-Z-plane of Godot's 3D coordinate system: How would you calculate the X and the Z coordinate of `segments` points equally distributed on an imaginative circle with a given radius? Hints:
  - Equally distributed means: all segments (pizza slices) have the same angle.
  - Draw the X-Z-Axis with the circle. Let the X-Axis be at angle 0. Draw the first slice. 
  - Draw a rectangular triangle connecting the upper slice vertex directly with the X-Axis.
  - Remember the rules you learned about rectangular triangles' edge lengths, angles, and `sin` and `cos` back in the 8th or 9th grade at school! Apply those rules to your image and think about the values that are given (angle, radius) and the information you want to calculate (x, z)!

#### 🔧 TODO 

- Create an algorithm building the disc surface out of triangles
  - Initialize the arrays `vertices`, `normals` and `indices` 
  - Add a first center vertex and normal
  - Add a first rim vertex and normal at the X-Axis
  - Start a `for` loop. In the loop body,
    - Add the next vertex to the `vertices` array on the rim (using the `sin` and `cos` formulae). Add its corresponding normal to the `normals` array showing up along the global Y-Axis.
    - Add a triangle made out of the center vertex, the vertex added in the last loop iteration (or the first rim vertex at all (on the X-Axis)). This means adding three indices to the `indices` array.
  - After finishing the loop with the penultimate triangle, close the disc (add the last pizza slice) connecting the center vertex, the vertex added in the last loop iteration and the very first vertex on the rim (the one on the X-axis). This will add a last triplet of vertices to the `vertex` array.

### 3. A Cylinder

- Make  the existing disk the top of a cylinder (move it up).
- Build a second disk to be the bottom of the cylinder (facing down).
- Generate a third surface with each rectangular segment (made out of two triangles) covering a part of the rounded lateral surface of the cylinder. How would you calculate the normals for the lateral surface's vertices to make this lateral surface segments appear as one rounded surface (a.k.a "smooth shaded")?

