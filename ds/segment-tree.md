# Segment Tree

[Back](../index.md){: .button}

A segment tree will is a data structure used to store information about intervals.  
The worst case estimate of the number of vertices is `4*N` 

### Struct

```cpp
typedef struct _Tree {
  int64_t *tree;
  int tree_size;
  int size;
} Tree;
```

## Build Tree

```cpp
void _build_tree(Tree *t, int32_t *s, int node, int tleft, int tright) {
  if (tleft == tright) {
    t->tree[node] = s[tleft];
  } else {
    int mid = (tleft + tright) / 2;
    _build_tree(t, s, node*2, tleft, mid);
    _build_tree(t, s, (node*2)+1, mid+1, tright);
    t->tree[node] = t->tree[node*2] + t->tree[node*2+1];
  }
}

// Convinent method to call build
void build_tree(Tree *tree, int32_t *arr) {
  _build_tree(tree, arr, 1, 0, tree->size - 1);
}
```

---

## Query Sum

```cpp
int64_t _sum_tree_range(Tree *tree, int node, int tleft, int tright, int left, int right) {
  if (left > right) {
    return 0ULL;
  }
  if (left == tleft && right == tright) {
    return tree->tree[node];
  }
  int tmid = (tleft + tright) / 2;
  return _sum_tree_range(tree, node*2    , tleft , tmid  , left          , min(right, tmid))
       + _sum_tree_range(tree, node*2 + 1, tmid+1, tright, max(left, tmid+1), right);
}

// Convinent method to call query sum
int sum_tree_range(Tree *tree, int left, int right) {
  return _sum_tree_range(tree, 1, 0, tree->size - 1, left, right);
}
```

---

## Update Tree

```cpp
void _update(Tree *tree, int node, int tleft, int tright, int pos, int new_val) {
    if (tleft == tright) {
        tree->tree[node] = new_val;
    } else {
        int tmid = (tleft + tright) / 2;
        if (pos <= tmid)
            _update(node*2, tleft, tmid, pos, new_val);
        else
            _update(node*2+1, tmid+1, tright, pos, new_val);
        tree->tree[node] = tree->tree[node*2] + tree->tree[node*2+1];
    }
}

void update(Tree *tree, int pos, int new_val) {
  _update(tree, 1, 0, tree->size-1, pos, new_val);
}

```
