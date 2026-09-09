# Day 1 — Digital Logic to RTL

## Objective

Build my first RTL modules and understand the basic workflow of:

Specification → Logic → RTL → Simulation → Verification

## Concepts Covered

- Digital logic
- Combinational logic
- Boolean logic
- Multiplexers
- Half adders
- SystemVerilog modules
- Testbenches
- Self-checking testbenches
- Simulation
- RTL verification
- 4-bit ALU design

## RTL Modules

### 1. AND Gate

Implemented a basic AND gate in SystemVerilog and verified its truth table.

### 2. 2:1 Multiplexer

Implemented a 2:1 MUX and verified its behavior for different select inputs.

### 3. Half Adder

Implemented:
- Sum = A XOR B
- Carry = A AND B

Created a self-checking testbench covering all four input combinations.

### 4. 4-bit ALU

Implemented an ALU supporting:

| Opcode | Operation |
|--------|-----------|
| 000 | ADD |
| 001 | SUB |
| 010 | AND |
| 011 | OR |
| 100 | XOR |
| 101 | Shift Left |
| 110 | Shift Right |
| 111 | Compare |

The ALU also generates:
- Carry flag
- Zero flag

## Verification

The ALU testbench checks:
- Arithmetic operations
- Logical operations
- Shift operations
- Comparison
- Carry generation
- Zero detection

## Debugging

During waveform analysis, I identified and debugged an issue with the comparison operation.

## Key Learning

The main goal of this exercise was to understand the difference between writing software and describing hardware using RTL.

The workflow used was:

Specification
→ Truth Table / Logic
→ RTL
→ Testbench
→ Simulation
→ Waveform Analysis
→ Debugging

## Future Improvements

- Increase ALU test coverage
- Add more corner cases
- Automate test generation
- Introduce assertions
- Move toward SystemVerilog-based verification