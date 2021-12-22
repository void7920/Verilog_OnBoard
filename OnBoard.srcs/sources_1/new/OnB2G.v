`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/22 02:38:33
// Design Name: Binary to Gray Converter
// Module Name: OnB2G
// Project Name: Binary to Gray Converter 
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


module OnB2G(
    led,
    sw
    );
    
    output [3:0]led;
    input [3:0]sw;
    
    Nbit_Binary_Gray_Converter#(4) B2G(.gray(led), .bin(sw));
endmodule
