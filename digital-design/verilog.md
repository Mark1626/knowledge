# Verilog

[Back](./digital-design.md){: .button}

## Registers and Wires

`reg` can store state, wires can not.

---

## Assignment

```v
  input   wire    i_S;
  output  reg     o_R;

  always @(posedge i_clk)
  begin
    o_R <= i_S;
  end
```

`<=` is a non bloking assignment, and happens on the clock edge. So in the following code the last assignment takes priority.

```v
  always @(posedge i_clk)
  begin
    A <= 5;
    A <= A + 1'b1;
  end
```

Hardware executed all blocks at once.

---

##
