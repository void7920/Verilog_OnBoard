`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/22 02:38:33
// Design Name: N-bit Gray to Binary Converter
// Module Name: Nbit_Gray_Binary_Converter
// Project Name: N-bit Gray to Binary Converter
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


module Nbit_Gray_Binary_Converter #(parameter size = 4)(
    bin,
    gray
    );
    
    output [size-1:0]bin;
    input [size-1:0]gray;
    
    genvar i;
    
    for(i=0; i<size; i=i+1)
    begin
        assign bin[i] =^ (gray >> i);
    end
endmodule
