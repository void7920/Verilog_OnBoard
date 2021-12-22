`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/21 22:28:03
// Design Name: Testbench Parallel Adder
// Module Name: Tb_FA
// Project Name: Testbench Parallel Adder
// Target Devices: simulation
// Tool Versions: Vivado 2020.2.2
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Tb_PA();
    parameter size = 4;
    
    reg [size-1:0]in0;
    reg [size-1:0]in1;
    
    wire [size:0]sum;
    
    Nbit_Parallel_Adder #(4) PA(.carry_out(sum[size]), .sum(sum[size-1:0]), .in0(in0), .in1(in1));
    
    initial
    begin
        #100 in0=2; in1=3;
        #100 in0=4; in1=5;
        #100 in0=8; in1=2;
        #100 in0=9; in1=0;
        #100 in0=7; in1=10;
    end
endmodule
