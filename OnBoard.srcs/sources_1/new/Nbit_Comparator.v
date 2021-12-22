`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/22 02:38:33
// Design Name: N-bit Comparator
// Module Name: Nbit_Comparator
// Project Name: N-bit Comparator 
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


module Nbit_Comparator #(parameter size = 4)(
    eq, 
    left, 
    right,
    a,
    b    
    );
    
    output eq;
    output left;
    output right;
    input [size-1:0]a;
    input [size-1:0]b;
    
    assign eq = (a===b);
    assign left = (a>b);
    assign right = (a<b);
endmodule
