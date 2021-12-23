# Verilog_onboard

This Project is for **Xilinx Zybo Z7**.

This Project doesn't have xdc file. please include it yourself.

__*If you want to use other xilinx board, you should change board info and master xdc file.*__

Basic Logic for zybo z7 and simulation

If you want only code, follow the route

[design source](https://github.com/void7920/Verilog_onboard/tree/main/OnBoard.srcs/sources_1/new)

[simulation source](https://github.com/void7920/Verilog_onboard/tree/main/OnBoard.srcs/sim_1/new)

---------------------------------------------------------------------------------------------
Project has these logics

You can resize maximum bit when use N-bit source. check and resize the parameter **size**.

list
- __Gate (N-bit)__
  - `AND`
  - `OR`
  - `NOT`
  - `NAND`
  - `NOR`
  - `XOR`
  - `XNOR`
  
- __Combinational Logic__ (updated 05/22/2021 21:28:12 KST / GMT+9)
  - `Half Adder / HA`
  - `Full Adder / FA`
  - `Half Subtractor / HS`
  - `Full Subtractor / FS`
  - `Parallel Adder / PA` **(N-bit)**
  - `Parallel Adder/Subtractor / PAS` **(N-bit)**
  - `Multiplexer 4x1 / MUX 4x1`
  - `Demultiplexer 1x4 / DEMUX 1x4`
  - Encoder (priority) / ENC **(WiP)**
  - `Decoder / DEC` **(N-bit)**
  - `Comparator / Comp` **(N-bit)**
  - `BCD-Gray Converter / B2G conv` **(N-bit)**
  - `Gray-BCD Converter / G2B conv` **(N-bit)**

- __Sequential Logic__ (updated 05/27/2021 18:40:01 KST / GMT+9)
  - `SR Latch`
  - `D Latch`
  - `D F/F`
  - `T F/F`
  - `JK F/F`

- Counter **(WiP)** (updated 12/23/2021 12:23:55 KST / GMT+9)
  - `BCD Ripple`
  - `D Ripple`
  - `T Ripple`
  - `Ring`
  - `Johnson`
  - Up-Down

- Register (updated 12/23/2021 12:23:55 KST / GMT+9)
  - `PIPO (load)`
  - `PISO (load)`
  - `SISO`
  - `SIPO`
  - `Universal Shift Register`

- __etc__ (updated 05/22/2021 21:28:12 KST / GMT+9)
  - `Hz1` (No PWM)
