+++
archetype = "home"
title = "Code 3"
draft = false
weight = 0
+++

| Day         | Start Lecture | Who | Contents                                                                                                     | Notes                  |
| ----------- | ------------- | --- | ------------------------------------------------------------------------------------------------------------ | ---------------------- |
| Mon, 01 Jun | 14:00         | C   | [Hello ArrayMesh](./topic_01_proc_hello_arraymesh_ch)                                                        | Morning: free half day |
| Tue, 02 Jun | 09:45         | U   | [Hello WebGL](./topic_02_hello_webgl_uw)                                                                     |                        |
| Wed, 03 Jun | 09:45         | C   | [A Disc made of triangles](./topic_01_proc_hello_arraymesh_ch/index.html#3-a-disc)                           |                        |
| Fri, 05 Jun | 09:45         | U   | [3D Rendering](./topic_04_3d_rendering_uw)                                                                   |                        |
| Mon, 08 Jun | 10:45         | C   | [A Cylinder](./topic_01_proc_hello_arraymesh_ch/index.html#3-a-cylinder)                                     |                        |
| Tue, 09 Jun | 09:45         | U   | [Interaction and textures](./topic_06_interaction_textures_uw)                                               |                        |
| Wed, 10 Jun | 09:45         | U   | [Guest lecture](https://uhahne.github.io/3DCV/protocols/Vorlesung%2011%20-%203D%20Gaussian%20Splatting.html) |                        |
| Wed, 10 Jun | 11:30         | C   | [Shaders in Godot](./topic_07_rendering_and_shaders_in_godot_ch/#shaders-in-godot)                           |                        |
| Thu, 11 Jun | 14:00         | C   | [Shaders in Godot (continued)](./topic_07_rendering_and_shaders_in_godot_ch/)                                | Morning: free half day |
| Fri, 12 Jun | 09:45         | U   | [Lighting](./topic_09_lighting_uw)                                                                           |                        |
| Mon, 15 Jun | 10:45         | C   | Advanced Shading Techniques in Game Engines                                                                  |                        |
| Tue, 16 Jun | 09:45*        | U   | Work on final project                                                                                        |                        |
| Wed, 17 Jun | 09:45*        | C   | Work on final project                                                                                        |                        |
| Thu, 18 Jun | 14:00*        | U   | Work on final project                                                                                        | Morning: free half day |
| Fri, 19 Jun | 09:45         | U&C | Exams                                                                                                        |                        |
| Mon, 22 Jun | 09:45         | U   | [Evaluation](https://felix.hs-furtwangen.de/auth/RepositoryEntry/78184789/CourseNode/113914304811493)        | Post-exam follow-up    |

(*) At the "Work on final project" days, the starting times mark the start of the lecturers' presence. Lecturers will be there for providing individual support
with the projects. There won't be any new contents during these days. 


<!-- 

|Day            | Topic                             | Description       | WebGL | Godot |
|---            |---                                |---                | ---   | --- |
|Tue, 13. May   | Hello Code 3                      | Introduction to the course and setup instructions. | Setup editor, hello world | Install Godot, hello world |
|Tue, 20. May   | Rendering Pipeline                | Overview of the rendering pipeline and its stages. | Triangle through pipeline |  |
|Wed, 21. May   | Simple Cube                       | Creating and rendering a simple 3D cube. | Create simple 3D geometry |  |
|Thu, 22. May   | Cylinder I                        | Mesh Data in Godot I | - | Modeling and rendering a circular disc |
|Fri, 23. May   | Cylinder II                       | Mesh Data in Godot I | - | Extruding the disc to become a Cylinder |
|Tue, 27. May   | Lighting                          | Add interaction and lights | Normals, lighting, shading |  |
|Wed, 28. May   | Introduction to Shaders in Godot  | Shaders are Materials - Materials are Shaders! | - | How is the rendering pipeline controlled by a game engine |
|Tue, 03. June  | Toon Shader                       | A Toon Shader made out of cell-coloring and outline drawing  | - | Setup Multipass rendering and implement a gradient lookup from a texture |
|Wed, 04. June  | Spot light                        | Fixing bugs and improve lighting | Debugging in WebGL | - |
|Thu, 05. June  | Textures                          | Textures | Adding textures | - |
|Fri, 06. June  | Project                           | Project | - | Finish shader |
-->

## Final Project

For the final project, you can choose between WebGL and Godot. 

### WebGL

Create a WebGL project implementing a scene with either several objects (hierarchical) or a single complex object. Implement your own [.obj loader](https://webgl2fundamentals.org/webgl/lessons/webgl-load-obj.html) if necessary. Implement one or more set(s) of shaders (vertex and fragment shader) that demonstrate a visual effect of your choice suiting the contents of your scene.

It is also possible to implement something completely different, like a raytracer or raymarcher in Vulkan or WebGPU, but please check with the lecturers before starting such a project.

### Godot

Create a Godot implementing 

- A procedurally generated mesh with the ability to adjust at least the meshes tesselation (number of triangles)
- One or more set(s) shaders implementing additional visual effect performing animation (either using animated uniforms or the TIME built-in variable)

### Submission

The project will be presented in the last week of the course in groups of four. The entire project (including the source code) needs to be submitted by the end of the course block. Please upload your project to GitHub using this GitHub Classroom link: [GitHub Classroom](https://classroom.github.com/a/AXVhmjPh). Add a readme.md file so that we can understand your project. The readme should include:

- A short description of your project
- How to run it (e.g., which files to open, how to start the server, Godot Version, etc.)
- A list of features you implemented
- A list of features you wanted to implement but didn't have time for
- Your name and email address

### Exam

The exams will take places in parties of four (four students are examined simultaneously). Prepare to demonstrate your project and to explain how it works. Prepare for questions such as "what would you do to add a feature like xxx to your project?"!  

## [hfu.li/COD-III](https://hfu.li/COD-III)

![QR-Code](./QR-hfu-li-COD-III.svg)