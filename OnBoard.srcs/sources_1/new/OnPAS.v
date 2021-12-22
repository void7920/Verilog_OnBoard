`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/22 01:37:48
// Design Name: Parallel Adder/Subtractor
// Module Name: OnPAS
// Project Name: Parallel Adder/Subtractor 
// Target Devices: Zybo Z7-20
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


module OnPAS(
    output [3:0]led,
    input [3:0]sw,
    input [3:0]btn
    );
    
    Nbit_Parallel_Add_Sub #(3) FA(.carry_out(led[3]), .sum(led[2:0]), .sel(sw[3]), .in0(sw[2:0]), .in1(btn[2:0]));
endmodule
