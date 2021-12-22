`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/22 02:38:33
// Design Name: Comparator
// Module Name: OnCOMP
// Project Name: Comparator
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


module OnCOMP(
    output [3:0]led,
    input [3:0]sw,
    input [3:0]btn
    );
    
    Nbit_Comparator#(4) COMP(.eq(led[1]), .left(led[3]), .right(led[0]), .a(sw), .b(btn));
endmodule
