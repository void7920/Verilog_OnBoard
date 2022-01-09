`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/22 20:59:19
// Design Name: N-bit Decoder
// Module Name: Nbit_Decoder
// Project Name: N-bit Decoder 
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


module Nbit_Decoder #(parameter isize = 3)(
    out,
    in
    );
    
    localparam osize = 2**isize;
    
    output [osize-1:0]out;
    input [isize-1:0]in;
    
    assign out = 1 << in;
endmodule
