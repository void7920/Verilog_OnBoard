`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi 
// 
// Create Date: 2021/05/21 22:29:42
// Design Name: Parallel Adder
// Module Name: OnPA
// Project Name: Parallel Adder 
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


module OnPA(
    output led6_g,
    output [3:0]led,
    input [3:0]sw,
    input [3:0]btn
    );
    
    Nbit_Parallel_Adder #(4) FA(.carry_out(led6_g), .sum(led), .in0(sw), .in1(btn));
endmodule
