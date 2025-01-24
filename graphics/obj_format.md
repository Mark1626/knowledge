# OBJ model format

[Back](../index.md){: .button}

The **OBJ** (Wavefront Object) and **MTL** (Material Template Library) formats are widely used in 3D modeling and computer graphics for representing 3D models and their associated materials. Here's an explanation of each:

---

### **OBJ Format**
The OBJ format is a simple, text-based file format used to represent 3D geometry. It was developed by Wavefront Technologies and is supported by most 3D modeling and rendering software.

#### Key Features of OBJ:

1. **Geometry Representation**:
   - Stores 3D geometry as vertices, edges, and faces.
   - Vertices are defined by their coordinates in 3D space (`v x y z`).
   - Faces are defined by connecting vertices (`f v1 v2 v3` for triangles or `f v1 v2 v3 v4` for quads).

2. **Texture Coordinates**:
   - UV mapping coordinates (`vt u v`) define how textures are mapped onto the model.

3. **Normals**:
   - Vertex normals (`vn x y z`) define the direction a surface is facing, used for lighting calculations.

4. **Groups and Objects**:
   - Objects (`o`) and groups (`g`) allow organizing parts of the model into logical sections.

5. **Material References**:
   - OBJ files can reference external MTL files to define materials for different parts of the model (`usemtl material_name`).

6. **File Structure**:
   - Plain text file with a `.obj` extension.
   - Human-readable and easy to parse.

#### Example OBJ File:

```obj
# Vertices
v 1.0 0.0 0.0
v 0.0 1.0 0.0
v 0.0 0.0 1.0

# Texture Coordinates
vt 0.0 0.0
vt 1.0 0.0
vt 0.5 1.0

# Normals
vn 0.0 0.0 1.0

# Faces
f 1/1/1 2/2/1 3/3/1
```

---

### **MTL Format**

The MTL format is a companion file to the OBJ format and defines material properties for the 3D model. It is also a text-based format and is referenced within the OBJ file.

#### Key Features of MTL:

1. **Material Definitions**:
   - Each material is defined with a `newmtl` statement followed by its properties.

2. **Material Properties**:
   - **Ambient Color (`Ka`)**: Defines the ambient reflection color.
   - **Diffuse Color (`Kd`)**: Defines the diffuse reflection color (base color).
   - **Specular Color (`Ks`)**: Defines the specular reflection color (shininess).
   - **Specular Exponent (`Ns`)**: Controls the shininess of the material.
   - **Opacity (`d` or `Tr`)**: Defines transparency (1.0 = fully opaque, 0.0 = fully transparent).
   - **Illumination Model (`illum`)**: Specifies the lighting model to use.

3. **Texture Maps**:
   - **Diffuse Map (`map_Kd`)**: Texture for the diffuse color.
   - **Ambient Map (`map_Ka`)**: Texture for the ambient color.
   - **Specular Map (`map_Ks`)**: Texture for the specular color.
   - **Bump Map (`map_Bump` or `bump`)**: Texture for surface details (normal mapping).

4. **File Structure**:
   - Plain text file with a `.mtl` extension.
   - Referenced in the OBJ file using the `mtllib` statement.

#### Example MTL File:

```mtl
# Material Definition
newmtl Material1
Ka 1.0 1.0 1.0   # Ambient color (white)
Kd 1.0 0.0 0.0   # Diffuse color (red)
Ks 0.5 0.5 0.5   # Specular color (gray)
Ns 100.0         # Shininess
map_Kd texture.png  # Diffuse texture map
```

---

### **How OBJ and MTL Work Together**

1. The OBJ file references the MTL file using the `mtllib` statement:
   ```obj
   mtllib materials.mtl
   ```
2. Within the OBJ file, specific materials are applied to parts of the model using the `usemtl` statement:
   ```obj
   usemtl Material1
   ```
3. The MTL file defines the properties of `Material1`, including colors, textures, and other attributes.

---

### **Advantages of OBJ and MTL**

- **Simplicity**: Both formats are text-based and easy to read/edit.
- **Compatibility**: Supported by almost all 3D modeling and rendering software.
- **Modularity**: Separates geometry (OBJ) from material definitions (MTL).

### **Limitations**

- **No Animation Support**: OBJ/MTL does not support animations or rigging.
- **No Scene Information**: Does not store lighting, cameras, or scene hierarchy.
- **Large File Sizes**: Text-based formats can become large for complex models.

---

In summary, the OBJ format is used for storing 3D geometry, while the MTL format defines the materials and textures applied to that geometry. Together, they provide a simple and effective way to represent 3D models for rendering and exchange between applications.