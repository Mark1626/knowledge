# Perf

[Back](../index.md#perf){: .button}

## perf record

```sh
# Record performance
perf record -g <your program>

# Sample every 100 Hz
perf record -F 100 <prog>

# Performance Report
perf report -g

# Performance Report
# graph - type of call graph: normalize percentage used to adjacent frame
# 0.5 - filter percentage
# caller - invert call order of the graph
perf report -g 'graph,0.5,caller'

# fractal - percentages are relative to parent
perf report -g 'fractal,0.5,caller'

perf report -g 'graph,0.5,caller' -F+srcline,period

perf report -g --percent-limit 4


```

- `-g` record call stack
  + Compile your program with `-fno-omit-frame-pointer`
- 

## perf report TUI

- `a` - switch to compiled ASM
- while in ASM window `s` for source code, `k` for line number
- `h` for help

## perf script

```
Walk through perf file and output contents of each record
perf script > out.perf
```


## Further Reading

- [Perf Tutorial](https://perf.wiki.kernel.org/index.php/Tutorial)
- [Perf Examples](https://www.brendangregg.com/perf.html)
- [CPP Conf, Tuning C++: Benchmarks, and CPUs, and Compilers! Oh My!](https://www.youtube.com/watch?v=nXaxk27zwlk)
- [Slides on perf](https://indico.cern.ch/event/141309/contributions/1369454/attachments/126021/178987/RobertoVitillo_FutureTech_EDI.pdf)
- [Perf Usages](https://opensource.com/article/18/7/fun-perf-and-python)

