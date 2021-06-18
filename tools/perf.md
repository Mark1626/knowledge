# Perf

[Back](../index.md){: .button}

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

