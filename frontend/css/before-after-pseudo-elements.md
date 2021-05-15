# Before, After Pseudo Elements

[Back](../../index.md){: .button}

```css
.text {
  font-size: 18px;
}

/* Creates pseudo elements that is that first child */
.text::before {
  content: "->"
}

/* Creates pseudo elements that is that last child */
.text::after {
  content: "<-"
}
```
