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
// Tool Versions: Vivado 2021.2
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Revision 0.02 - Modify Parameter
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Nbit_Encoder #(parameter isize = 8) (
    out,
    in
    );
    
    localparam osize  = $clog2(isize);
    
    output [oszie-1:0]out;
    input [isize-1:0]in;
    
    assign out = $clog2(in);
endmodule
