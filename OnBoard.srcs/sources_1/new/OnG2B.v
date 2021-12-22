`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/22 02:38:33
// Design Name: Gray to Binary Converter
// Module Name: OnG2B
// Project Name: Gray to Binary Converter 
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


module OnG2B(
    output [3:0]led,
    input [3:0]sw
    );
    
    Nbit_Gray_Binary_Converter#(4) G2B(.bin(led), .gray(sw));
endmodule
