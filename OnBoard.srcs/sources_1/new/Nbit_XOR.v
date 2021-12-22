`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/20 20:22:27
// Design Name: N-bit input XOR Gate
// Module Name: Nbit_XOR
// Project Name: XOR Gate
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


module Nbit_XOR #(parameter size = 4)(
    out,
    in
    );
    
    output out;
    input [size-1:0]in;
    
    wire [size-2:0]tmp;
    
    assign out = tmp[size-2];
    
    genvar i;
    generate
        for(i=0; i<size-1; i=i+1)
        begin
            if(i==0)
                assign tmp[i] = in[i] ^ in[i+1];
            else
                assign tmp[i] = tmp[i-1] ^ in[i+1];
        end
    endgenerate
endmodule
