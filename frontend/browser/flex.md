# Flex

[Back](../index.md){: .button}

# Terminology

- **Container:** Parent containing the items
- **Item:** Element inside the flex container
- **Main Axis:** Axis along which items are laid
- **Cross Axis:** Axis perpendicular to the main axis

# Properties

## Container

### Row

> **Note:** The default flex direction is row

```html
<div class="container" style="display: flex">
  …
</div>
```

<div class="container" style="display: flex; background-color: #eee; color: #fff">
  <div class="item" style="background-color: #a00">Item1</div>
  <div class="item" style="background-color: #0a0">Item2</div>
  <div class="item" style="background-color: #00a">Item3</div>
</div>

### Column

```html
<div class="container" style="display: flex; flex-direction: column;">
  …
</div>
```

<div class="container" style="display: flex; flex-direction: column; background-color: #eee; color: #fff">
  <div class="item" style="background-color: #a00">Item1</div>
  <div class="item" style="background-color: #0a0">Item2</div>
  <div class="item" style="background-color: #00a">Item3</div>
</div>

### Wrap

```html
<div class="container" style="display: flex; flex-wrap: wrap;">
  …
</div>
```

<div class="container" style="display: flex; width: 80px; flex-wrap: wrap; background-color: #eee; color: #fff">
  <div class="item" style="background-color: #a00">Item1</div>
  <div class="item" style="background-color: #0a0">Item2</div>
  <div class="item" style="background-color: #00a">Item3</div>
</div>

### Main Axis Alignment

### Justify Content

#### space-between

```html
<div class="container" style="display: flex; justify-content: space-between;">
  …
</div>
```

<div class="container" style="display: flex; justify-content: space-between; background-color: #eee; color: #fff">
  <div class="item" style="background-color: #a00">Item1</div>
  <div class="item" style="background-color: #0a0">Item2</div>
  <div class="item" style="background-color: #00a">Item3</div>
</div>

#### space-around

```html
<div class="container" style="display: flex; justify-content: space-around;">
  …
</div>
```

### Align Items

> **Note:** It is mostly better to ensure that the items are of same height

#### Baseline

```html
<div class="container" style="display: flex; align-items: baseline;">
  …
</div>
```

<div class="container" style="display: flex; align-items: baseline; background-color: #eee; color: #fff">
  <div class="item" style="height: 50px; background-color: #a00">Item1</div>
  <div class="item" style="height: 75px; background-color: #0a0">Item2</div>
  <div class="item" style="height: 25px; background-color: #00a">Item3</div>
</div>

#### Stretch

```html
<div class="container" style="display: flex; align-items: stretch;">
  …
</div>
```

<div class="container" style="display: flex; align-items: stretch; background-color: #eee; color: #fff">
  <div class="item" style="background-color: #a00">Item1</div>
  <div class="item" style="height: 75px; background-color: #0a0">Item2</div>
  <div class="item" style="background-color: #00a">Item3</div>
</div>

### Cross Axis Alignment

### Align Content

#### space-around

```html
<div class="container" style="display: flex; flex-wrap: wrap; align-content: space-around">
  …
</div>
```

<div class="container" style="display: flex; height: 100px; width: 80px; flex-wrap: wrap; align-content: space-around; background-color: #eee; color: #fff">
  <div class="item" style="background-color: #a00">Item1</div>
  <div class="item" style="background-color: #0a0">Item2</div>
  <div class="item" style="background-color: #00a">Item3</div>
</div>

## Items

### Align Self

This can be used to override the value set for `align-items` for an individual item

```html
<div class="container" style="display: flex; flex-direction: column;">
  <div class="item">Item1</div>
  <div class="item">Item2</div>
  <div class="item" style="align-self: flex-end">Item3</div>
</div>
```

<div class="container" style="display: flex; flex-direction: column; background-color: #eee; color: #fff">
  <div class="item" style="background-color: #a00">Item1</div>
  <div class="item" style="background-color: #0a0">Item2</div>
  <div class="item" style="background-color: #00a; align-self: flex-end">Item3</div>
</div>


## References

- [Flex box MDN docs](https://developer.mozilla.org/en-US/docs/Learn/CSS/CSS_layout/Flexbox)
- [Flex box cheatsheet](https://css-tricks.com/snippets/css/a-guide-to-flexbox/)
