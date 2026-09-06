# ALU Design using Verilog HDL

## Overview

This project implements a modular Arithmetic Logic Unit (ALU) using Verilog HDL. 
The ALU integrates eight different operations through a top-level ALU module. 
Each operation is implemented as a separate Verilog module and integrated into 
the main ALU design.

## Operations Supported

The ALU supports the following operations:

- Addition
- Subtraction
- Multiplication
- Division
- Left Shift
- Right Shift
- NAND
- NOR

## Design Structure

The design follows a modular approach, where each operation is implemented 
independently and integrated through the top-level ALU module.


ALU-verilog/
│
├── rtl/
│   ├── addition/
│   ├── subtraction/
│   ├── multiplication/
│   ├── division/
│   ├── left_shift/
│   ├── right_shift/
│   ├── nand/
│   ├── nor/
│   └── alu_top_module.v
│
├── testbench/
│   └── testbench.v
│
└── simulation/
    └── waveform.png
