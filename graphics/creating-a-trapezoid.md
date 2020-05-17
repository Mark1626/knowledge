# Creating a Trapezoid

### Method 1 - Polyhedra Buffer Geometry

```js
new THREE.polyhedronBufferGeometry(verticesOfCube, indicesOfFaces, 1, 0)
```

- Create a polyhedra buffer geometry and enter the vertices

---

### Method 2 - Cylinder Geometry

```js
new THREE.cylinderGeometry(0.4 / Math.SQRT2, 1 / Math.SQRT2, 4)
```

- Create a cylinder and adjust the top radius and bottom radius
- Reduce the radial segments in the geometry to required amount
