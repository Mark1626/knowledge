# Bounding Client Rect

[Back](../../index.md){:.button}

`getBoundingClientRect` can be used to get the coordinates of the element in the DOM

```js
const element = document.getElementById("container")
const { x, y, width, height, left, right, top, bottom} = element.getBoundingClientRect();
```
