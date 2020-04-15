# Conditional Typing

```js
function bind<T extends Callback | ConcurrentCallback>() {
  return () =>
    (test: T extends ConcurrentCallback
        ? ConcurrentFn
        : Fn,
    ) => void {
      // Implementation
    };
}
```

## Reference

- https://medium.com/dooboolab/conditional-typing-using-typescript-generic-d51875503412
