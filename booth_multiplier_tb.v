`timescale 1ns/1ps
module booth_multiplier_tb;

// inputs

reg clk;
reg load;
reg reset;
reg [3:0] M;
reg [3:0] Q;

// outputs

wire [7:0] P;

// instantiate the Design Under Test (DUT)
booth_multiplier dut (.clk(clk), .load(load), .reset(reset), .M(M), .Q(Q), .P(P));

always # 10 clk = ~clk;
initial begin

// initialize inputs
clk = 0;
load = 0;
reset = 1'b1;
M = 4'b0111;
Q = 4'b0011;

#20; load = 1;
reset = 1'b0;
#20; load = 0;
#150 $finish;

end 
endmodule

