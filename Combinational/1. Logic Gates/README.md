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

## 🔧 Structural Modeling

Structural modeling describes a digital circuit by specifying the **gates and their connections**.

Verilog provides built-in gate primitives such as:

```text
and
or
not
nand
nor
xor
xnor
buf
Example: AND Gate
module AND_Gate(
    input A,
    input B,
    output Y
);

    and (Y, A, B);

endmodule

Here:

and (Y, A, B);

represents an AND gate where:

A → Input 1
B → Input 2
Y → Output

The output follows:

Y = A · B
💻 Verilog Implementation
AND Gate
module AND_Gate(
    input A,
    input B,
    output Y
);

    and (Y, A, B);

endmodule
OR Gate
module OR_Gate(
    input A,
    input B,
    output Y
);

    or (Y, A, B);

endmodule
NOT Gate
module NOT_Gate(
    input A,
    output Y
);

    not (Y, A);

endmodule
Buffer
module BUFFER_Gate(
    input A,
    output Y
);

    buf (Y, A);

endmodule
NAND Gate
module NAND_Gate(
    input A,
    input B,
    output Y
);

    nand (Y, A, B);

endmodule
NOR Gate
module NOR_Gate(
    input A,
    input B,
    output Y
);

    nor (Y, A, B);

endmodule
XOR Gate
module XOR_Gate(
    input A,
    input B,
    output Y
);

    xor (Y, A, B);

endmodule
XNOR Gate
module XNOR_Gate(
    input A,
    input B,
    output Y
);

    xnor (Y, A, B);

endmodule
🧪 Testbench

The testbench applies all possible combinations of inputs to verify the functionality of the two-input gates.

Example testbench for the AND gate:

`timescale 1ns / 1ps

module AND_Gate_tb;

    reg A;
    reg B;
    wire Y;

    AND_Gate uut (
        .A(A),
        .B(B),
        .Y(Y)
    );

    initial begin

        $monitor("Time=%0t | A=%b B=%b | Y=%b",
                 $time, A, B, Y);

        A = 0; B = 0;
        #10;

        A = 0; B = 1;
        #10;

        A = 1; B = 0;
        #10;

        A = 1; B = 1;
        #10;

        $finish;

    end

endmodule

The same testing method can be used for OR, NAND, NOR, XOR, and XNOR gates.

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
