# 4bit_register
This project implements a 4-bit Register using Verilog HDL. A register is a sequential logic circuit used to store binary data. The register consists of four D flip-flops that store a 4-bit input value on the rising edge (positive edge) of the clock signal.

## Features
- Synthesizable Verilog HDL code
- 4-bit data storage
- Positive-edge triggered
- No reset signal
- Simple and efficient sequential circuit

## Inputs
| Signal | Width | Description |
|--------|-------|-------------|
| `clk` | 1 bit | Clock input |
| `d` | 4 bits | Data input |

## Output
| Signal | Width | Description |
|--------|-------|-------------|
| `q` | 4 bits | Registered data output |

## Files
- `register_4bit.v` – Verilog module for the 4-bit register
- `register_4bit_tb.v` – Testbench for simulation

## Working
1. The register waits for the positive edge of the clock.
2. On every positive edge, the input data (`d`) is stored in the register.
3. The output (`q`) holds the stored value until the next positive edge.

## Simulation
The testbench:
- Generates a clock signal.
- Applies different 4-bit input values.
- Displays the output using `$monitor`.
- Generates a VCD waveform file for GTKWave.

## Applications
- Data storage
- Shift registers
- Counters
- Digital systems
- FPGA and ASIC designs

## Tools Used
- Verilog HDL
- EDA Playground
- GTKWave

## Expected Output
The output `q` updates only on the **positive edge** of the clock and stores the current value of the input `d`.

## Author
**Apoorva B A**



