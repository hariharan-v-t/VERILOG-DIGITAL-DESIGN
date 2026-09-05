# Basic Digital Logic Gates Using Verilog HDL

A simple Verilog HDL project demonstrating the **design, simulation, and verification of fundamental digital logic gates** using **Verilog gate-level primitives**.

---

## 📌 Overview

This project implements the following basic digital logic gates using **structural modeling** in Verilog HDL:

- AND Gate
- OR Gate
- NOT Gate
- BUFFER Gate
- NAND Gate
- NOR Gate
- XOR Gate
- XNOR Gate

Each gate is designed using Verilog's built-in **gate primitives** and verified through simulation using a testbench.

# Basic Digital Logic Gates Using Verilog HDL

A simple Verilog HDL project demonstrating the **design, simulation, and verification of fundamental digital logic gates** using **Verilog gate-level primitives**.

---

## 📌 Overview

This project implements the following basic digital logic gates using **structural modeling** in Verilog HDL:

- AND Gate
- OR Gate
- NOT Gate
- BUFFER Gate
- NAND Gate
- NOR Gate
- XOR Gate
- XNOR Gate

Each gate is designed using Verilog's built-in **gate primitives** and verified through simulation using a testbench.

---

## 💻 Verilog Design

## AND Gate

```verilog
`timescale 1ns / 1ps

module AND_Gate(y,a,b);

output y;
input a,b;

and (y,a,b);

endmodule

