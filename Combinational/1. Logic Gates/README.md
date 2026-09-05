A beginner-friendly Verilog HDL project demonstrating the **design, simulation, and verification of fundamental digital logic gates** using **structural (gate-level) modeling**.

---

## 📌 Overview

Logic gates are the fundamental building blocks of digital electronic circuits.

This project implements the following basic logic gates using **Verilog HDL gate primitives**:

- Buffer
- NOT
- AND
- OR
- NAND
- NOR
- XOR
- XNOR

Each gate is tested using a Verilog **testbench**, and the simulation results are verified against the corresponding truth tables.

---

## 🎯 Aim

To design and verify fundamental digital logic gates using **Verilog HDL structural modeling** and analyze their functionality through simulation waveforms.

---

## 🧠 Logic Gates

| Gate | Boolean Expression | Function |
|------|--------------------|----------|
| Buffer | `Y = A` | Output follows the input |
| NOT | `Y = A'` | Produces the complement of input |
| AND | `Y = A · B` | Output is 1 when both inputs are 1 |
| OR | `Y = A + B` | Output is 1 when at least one input is 1 |
| NAND | `Y = (A · B)'` | Complement of AND |
| NOR | `Y = (A + B)'` | Complement of OR |
| XOR | `Y = A ⊕ B` | Output is 1 when inputs are different |
| XNOR | `Y = A ⊙ B` | Output is 1 when inputs are equal |

---

## 📊 Truth Tables

### Single-Input Gates

| A | Buffer | NOT |
|---|--------|-----|
| 0 | 0 | 1 |
| 1 | 1 | 0 |

### Two-Input Gates

| A | B | AND | OR | NAND | NOR | XOR | XNOR |
|---|---|-----|----|------|-----|-----|------|
| 0 | 0 | 0 | 0 | 1 | 1 | 0 | 1 |
| 0 | 1 | 0 | 1 | 1 | 0 | 1 | 0 |
| 1 | 0 | 0 | 1 | 1 | 0 | 1 | 0 |
| 1 | 1 | 1 | 1 | 0 | 0 | 0 | 1 |

---

💻 Verilog Design
AND

`timescale 1ns / 1ps
module AND_Gate(y,a,b);
output y;
input a,b;
assign y = a & b;
endmodule

OR

`timescale 1ns / 1ps
module OR_Gate(y,a,b);
output y;
input a,b;
assign y = a | b;
endmodule

NOT

`timescale 1ns / 1ps
module NOT_Gate(y,a);
output y;
input a;
y = ~a;
endmodule

BUFFER

`timescale 1ns / 1ps
module BUFFER_Gate(y,a);
output y;
input a;
y = a;
endmodule

NAND

`timescale 1ns / 1ps
module NAND_Gate(y,a,b);
output y;
input a,b;
assign y = ~(a & b);
endmodule

NOR

`timescale 1ns / 1ps
module NOR_Gate(y,a,b);
output y;
input a,b;
assign y = ~(a | b);
endmodule

XOR

`timescale 1ns / 1ps
module XOR_Gate(y,a,b);
output y;
input a,b;
assign y = a ^ b;
endmodule

XNOR

`timescale 1ns / 1ps
module XNOR_Gate(y,a,b);
output y;
input a,b;
assign y = ~(a ^ b);
endmodule

🧪 Testbench

The testbench applies all four possible combinations of the two inputs:

`timescale 1ns / 1ps
module tb_Gate;
reg a,b;
wire y;
Gatename_Gate uut ( y,a,b ); // Change Gatename 
initial begin
$monitor("Time=%0t | a=%b b=%b | y=%b", $time, a, b, y);
a = 0; b = 0;     #10;
a = 0; b = 1;     #10;
a = 1; b = 0;     #10;
a = 1; b = 1;     #10;
$finish;
end
endmodule


🔬 Simulation

The expected simulation results for the two-input gates are:

A B | AND OR NAND NOR XOR XNOR
--------------------------------
0 0 |  0   0   1    1   0    1
0 1 |  0   1   1    0   1    0
1 0 |  0   1   1    0   1    0
1 1 |  1   1   0    0   0    1

The simulation waveform should match the expected truth table for each gate.

🛠️ Tools

The designs can be simulated using:

Xilinx Vivado

📂 Project Structure
01_Basic_Logic_Gates/
│
├── AND_Gate/
│   ├── AND_Gate.v
│   └── AND_Gate_tb.v
│
├── OR_Gate/
│   ├── OR_Gate.v
│   └── OR_Gate_tb.v
│
├── NOT_Gate/
│   ├── NOT_Gate.v
│   └── NOT_Gate_tb.v
│
├── BUFFER_Gate/
│   ├── BUFFER_Gate.v
│   └── BUFFER_Gate_tb.v
│
├── NAND_Gate/
│   ├── NAND_Gate.v
│   └── NAND_Gate_tb.v
│
├── NOR_Gate/
│   ├── NOR_Gate.v
│   └── NOR_Gate_tb.v
│
├── XOR_Gate/
│   ├── XOR_Gate.v
│   └── XOR_Gate_tb.v
│
├── XNOR_Gate/
│   ├── XNOR_Gate.v
│   └── XNOR_Gate_tb.v
│
└── README.md
🔄 Verification Method
Define the input and output ports.
Implement the logic gate using Verilog gate primitives.
Create a testbench for the design.
Apply all possible input combinations.
Run the simulation.
Observe the output waveform.
Compare the simulation results with the expected truth table.
Verify the functionality of the gate.
📚 Concepts Covered
Digital Logic Gates
Boolean Algebra
Truth Tables
Combinational Logic
Verilog HDL
Structural Modeling
Verilog Primitive Gates
Testbench Development
Simulation
Waveform Analysis
Functional Verification

✅ Result

The Buffer, NOT, AND, OR, NAND, NOR, XOR, and XNOR gates were successfully implemented using Verilog HDL structural/gate-level primitives.

All possible input combinations were tested using simulation, and the obtained outputs matched the expected truth tables.
