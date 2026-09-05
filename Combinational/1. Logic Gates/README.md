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

```
## OR Gate
```verilog
`timescale 1ns / 1ps

module OR_Gate(y,a,b);

output y;
input a,b;

or (y,a,b);

endmodule
```
## NOT Gate
```verilog
`timescale 1ns / 1ps

module NOT_Gate(y,a);

output y;
input a;

not (y,a);

endmodule
```
## BUFFER Gate
```verilog
`timescale 1ns / 1ps

module BUFFER_Gate(y,a);

output y;
input a;

buf (y,a);

endmodule
```
## NAND Gate
```verilog
`timescale 1ns / 1ps

module NAND_Gate(y,a,b);

output y;
input a,b;

nand (y,a,b);

endmodule
```
## NOR Gate

```verilog
`timescale 1ns / 1ps

module NOR_Gate(y,a,b);

output y;
input a,b;

nor (y,a,b);

endmodule

```
## XOR Gate

```verilog
`timescale 1ns / 1ps

module XOR_Gate(y,a,b);

output y;
input a,b;

xor (y,a,b);

endmodule

```
## XNOR Gate

```verilog
`timescale 1ns / 1ps

module XNOR_Gate(y,a,b);

output y;
input a,b;

xnor (y,a,b);

endmodule

```
## Testbench

The testbench applies all possible input combinations and verifies the output of the logic gates.
```verilog
`timescale 1ns / 1ps

module tb_Gates;

reg a,b;

wire and_y;
wire or_y;
wire not_y;
wire buf_y;
wire nand_y;
wire nor_y;
wire xor_y;
wire xnor_y;

AND_Gate    U1(and_y,a,b);
OR_Gate     U2(or_y,a,b);
NOT_Gate    U3(not_y,a);
BUFFER_Gate U4(buf_y,a);
NAND_Gate   U5(nand_y,a,b);
NOR_Gate    U6(nor_y,a,b);
XOR_Gate    U7(xor_y,a,b);
XNOR_Gate   U8(xnor_y,a,b);

initial begin

$monitor("Time=%0t | A=%b B=%b | AND=%b OR=%b NOT=%b BUF=%b NAND=%b NOR=%b XOR=%b XNOR=%b",
          $time,a,b,and_y,or_y,not_y,buf_y,nand_y,nor_y,xor_y,xnor_y);

a = 0; b = 0;
#10;

a = 0; b = 1;
#10;

a = 1; b = 0;
#10;

a = 1; b = 1;
#10;

$finish;

end

endmodule
```
## Truth Table

The expected outputs for all possible input combinations are:

A B | BUF NOT AND OR NAND NOR XOR XNOR
---------------------------------------
0 0 |  0   1   0  0   1   1   0    1

0 1 |  0   1   0  1   1   0   1    0

1 0 |  1   0   0  1   1   0   1    0

1 1 |  1   0   1  1   0   0   0    1


## Simulation

The Verilog designs are simulated using Xilinx Vivado.

The testbench applies:

A = 0, B = 0

A = 0, B = 1

A = 1, B = 0

A = 1, B = 1


The simulation waveform is checked against the expected truth table.

The output of each gate should match its corresponding logic operation.

## Modeling Style

This project uses Structural Modeling in Verilog HDL.

Verilog built-in gate primitives are used:

and
or
not
buf
nand
nor
xor
xnor

For example:
```verilog
and (y,a,b);
```
represents an AND gate where:

a, b → Inputs
y    → Output

## Tools Used

Verilog HDL
Xilinx Vivado
GitHub

## Concepts Covered

Digital Logic Gates
Boolean Logic
Truth Tables
Combinational Logic
Verilog HDL
Structural Modeling
Gate-Level Modeling
Verilog Gate Primitives
Testbench Design
Simulation
Waveform Verification
📂 Project Structure
01_Basic_Logic_Gates/
│
├── AND_Gate/

│   ├── AND_Gate.v

│   ├── AND_Gate_tb.v

│   └── Simulation_Waveform.png

│

├── OR_Gate/

│   ├── OR_Gate.v

│   ├── OR_Gate_tb.v

│   └── Simulation_Waveform.png

│

├── NOT_Gate/

│   ├── NOT_Gate.v

│   ├── NOT_Gate_tb.v

│   └── Simulation_Waveform.png

│

├── BUFFER_Gate/

│   ├── BUFFER_Gate.v

│   ├── BUFFER_Gate_tb.v

│   └── Simulation_Waveform.png

│

├── NAND_Gate/

│   ├── NAND_Gate.v

│   ├── NAND_Gate_tb.v

│   └── Simulation_Waveform.png

│

├── NOR_Gate/

│   ├── NOR_Gate.v

│   ├── NOR_Gate_tb.v

│   └── Simulation_Waveform.png

│

├── XOR_Gate/

│   ├── XOR_Gate.v

│   ├── XOR_Gate_tb.v

│   └── Simulation_Waveform.png

│

├── XNOR_Gate/

│   ├── XNOR_Gate.v

│   ├── XNOR_Gate_tb.v

│   └── Simulation_Waveform.png

│

└── README.md



The AND, OR, NOT, BUFFER, NAND, NOR, XOR, and XNOR gates were successfully implemented using Verilog HDL structural modeling.
