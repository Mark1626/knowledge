## React Forward Ref

[Back](../../index.md){: .button}

React Forward Ref lets campononts take a ref they receive and pass it further down

```jsx
const FancyButton = React.forwardRef((props, ref) => (
  <button ref={ref} className="FancyButton">
    {props.children}
  </button>
));

// You can now get a ref directly to the DOM button:
const ref = React.createRef();
<FancyButton ref={ref}>Click me!</FancyButton>;
```

#### Reference

- https://reactjs.org/docs/forwarding-refs.html
