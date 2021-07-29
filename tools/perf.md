# Perf

[Back](../index.md#perf){: .button}

```sh
# Record performance
perf record -g <your program>

# Performance Report
perf report -g

# Performance Report
# graph - type of call graph: normalize percentage used to adjacent frame
# 0.5 - filter percentage
# caller - invert call order of the graph
pert report -g 'graph,0.5,caller'

```

- `-g` record call stack
  + Compile your program with `-fno-omit-frame-pointer`
- 

## Further Reading

- [perf Usage Tutorial at CPPConf](https://www.youtube.com/watch?v=nXaxk27zwlk)
- [perf Tutorial](https://perf.wiki.kernel.org/index.php/Tutorial)

