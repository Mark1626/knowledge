# Disjoint Set

[Back](../index.md#data-structure){: .button}

A disjoint set data structure stores a correction of disjoint sets.

### Find Root

```cpp
node* find_root(node* nodes, int idx) {
  node* curr_node = &nodes[idx];
  node* root = curr_node;

  if (curr_node->parent == NULL) {
    return curr_node;
  }

  // Find the absolute root
  while (root->parent != NULL) {
    root = root->parent;
  }

  while (curr_node->parent != NULL) {
    node* parent = curr_node->parent;
    curr_node->parent = root;
    curr_node = parent;
  }

  return curr_node;
}
```

---

### Union Operation

```cpp
void union_set(node* nodes, int x, int y) {
  node* nodeA = find_root(nodes, x);
  node* nodeB = find_root(nodes, y);

  if (nodeA == nodeB) {
    return;
  }

  if (nodeA->size < nodeB->size) {
    node* temp = nodeA;
    nodeA = nodeB;
    nodeB = temp;
  }

  nodeA->size = nodeA->size + nodeB->size;
  nodeB->parent = nodeA;
}
