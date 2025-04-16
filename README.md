This project implements a 4-bit signed Booth multiplier using Verilog HDL. The design showcases the use of Booth’s algorithm for efficient multiplication of two 4-bit signed integers in two’s complement form. It includes a complete testbench for functional verification.

The Booth multiplier is a hardware-efficient solution for signed binary multiplication. Instead of performing straightforward shift-and-add operations for each bit, Booth’s algorithm minimizes the number of additions and subtractions by encoding the multiplier in such a way that consecutive 1s are handled more compactly. This makes the algorithm especially useful in performance-sensitive and resource-constrained digital systems.

Takes two 4-bit signed inputs (multiplicand M and multiplier Q)

Uses Booth's encoding logic to multiply them across 4 clock cycles

Outputs an 8-bit signed product P


Algorithm:

At each clock cycle:

Check the LSB of the multiplier Q and Q-1

Depending on {Q0, Q-1}:

10: Subtract multiplicand from accumulator A

01: Add multiplicand to accumulator A

00 or 11: No arithmetic operation

Each case perform arithmetic right shift on {A, Q0, Q-1}


Test case and final output:

M = 0111 // +7
Q = 0011 // +3
Expected Output (P): 0001_0101 // 7 * 3 = 21


Files

booth_multiplier.v: Main Verilog module implementing the Booth multiplier

booth_multiplier_tb.v: Testbench for simulation with waveform generation

README.md: Project description and details
