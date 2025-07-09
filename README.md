# Verilog ALU - 32-bit Smart Arithmetic Logic Unit

## 🔧 Project Overview
This project implements a 32-bit Arithmetic Logic Unit (ALU) in Verilog with support for both signed and unsigned operations. It dynamically selects behavior based on operation codes and handles wide 64-bit output, making it suitable for integration into RISC-style processors and pipeline stages.

#  File Structure
- `ALU_4bit.v`: Main Verilog module implementing the ALU logic
- `README.md`: Project documentation (you're reading it!)
- *(Optional)* `testbench.v`: For verifying behavior (can be added later)
- 
# Features
- Supports 8 arithmetic operations:
  - `ADD`, `SUB`, `MUL`, `DIV` (Unsigned)
  - `ADD`, `SUB`, `MUL`, `DIV` (Signed)
- Dynamic signed vs unsigned processing via `$signed()` casting
- Compact opcode-based control structure
- Clean combinational logic using `always @*`

# Supported Opcodes

| Opcode | Operation         | Signed? |
|--------|------------------|--------|
| 0000   | A + B             | No     |
| 0001   | A - B             | No     |
| 0010   | A * B             | No     |
| 0011   | A / B             | No     |
| 0100   | A + B             | Yes    |
| 0101   | A - B             | Yes    |
| 0110   | A * B             | Yes    |
| 0111   | A / B             | Yes    |

# Requirements
- Vivado or any Verilog-compatible simulator
- Basic understanding of digital logic & signed/unsigned arithmetic

# Future Improvements
- Add flags for Zero, Negative, Overflow
- Extend opcode set with logical and shift operations
- Design a testbench for simulation and verification

# Author
Designed by **Abhishek** | Kamthi, MH, India  
Passionate about pipelined processors, RISC-V, and sustainable hardware design.
