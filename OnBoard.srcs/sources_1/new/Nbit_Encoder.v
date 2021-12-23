`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/22 20:59:19
// Design Name: N-bit Encoder
// Module Name: Nbit_Encoder
// Project Name: N-bit Encoder 
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


module Nbit_Encoder #(parameter osize = 3, parameter isize = 2**osize) (
    out,
    in
    );
    
    output [oszie-1:0]out;
    input [isize-1:0]in;
    
    assign out = $clog2(in);
endmodule
