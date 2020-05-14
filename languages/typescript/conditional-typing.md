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

## Zettle

Id: d76e6a2930e6407008c33541bdabfaa5  
Links:
- 2e2abe296abf535f583cdf0f6524376b
