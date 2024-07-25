# Kadane

[Back](../index.md#algorithm){: .button}

```py
def max_subarray(numbers):
    """Find the largest sum of any contiguous subarray."""
    best_sum = 0  # or: float('-inf')
    current_sum = 0
    for x in numbers:
      current_sum = max(0, current_sum + x)
      best_sum = max(best_sum, current_sum)
      return best_sum
```

## Reference

[Kadane](https://en.wikipedia.org/wiki/Maximum_subarray_problem)

