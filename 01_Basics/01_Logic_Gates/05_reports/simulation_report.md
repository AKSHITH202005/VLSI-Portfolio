# AND Gate Simulation Report

## Objective

Verify the functionality of a 2-input AND gate.

---

## RTL

Dataflow Modeling

```verilog
assign y = a & b;
```

---

## Truth Table

| A | B | Y |
|---|---|---|
|0|0|0|
|0|1|0|
|1|0|0|
|1|1|1|

---

## Simulation Status

✅ Passed

---

## Simulator

- Icarus Verilog

---

## Output

The simulation matched the expected truth table.

No errors observed.