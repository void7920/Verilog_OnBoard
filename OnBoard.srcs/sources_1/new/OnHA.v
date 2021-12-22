`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/21 22:22:21
// Design Name: Half Adder
// Module Name: OnHA
// Project Name: Half Adder
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


module OnHA(
    output [3:0]led,
    input [3:0]sw,
    input [3:0]btn
    );
    
    Half_Adder (.carry_out(led[1]), .sum(led[0]), .in0(sw[0]), .in1(btn[0])); 
endmodule
