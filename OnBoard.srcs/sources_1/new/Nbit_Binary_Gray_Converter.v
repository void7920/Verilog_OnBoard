`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/22 02:38:33
// Design Name: N-bit Binary to Gray Converter
// Module Name: Nbit_Binary_Gray_Converter
// Project Name: N-bit Binary to Gray Converter 
// Target Devices: 
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


module Nbit_Binary_Gray_Converter #(parameter size = 4)(
    gray,
    bin
    );
    
    output [size-1:0]gray;
    input [size-1:0]bin;
    
    assign gray = (bin >> 1) ^ bin;
endmodule
