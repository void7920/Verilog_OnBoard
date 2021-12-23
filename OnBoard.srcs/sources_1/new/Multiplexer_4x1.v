`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/22 21:16:17
// Design Name: Multiplexer 4x1
// Module Name: Multiplexer_4x1
// Project Name: Multiplexer 4x1 
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


module Multiplexer_4x1 #(parameter size=4)(
    o,
    sel,
    i0,
    i1,
    i2,
    i3
    );
    
    output reg [size-1:0]o;
    input [1:0]sel;
    input [size-1:0]i0;
    input [size-1:0]i1;
    input [size-1:0]i2;
    input [size-1:0]i3;
    
    always@(*)
    begin
        case(sel)
            'b00 : o = i0;
            'b01 : o = i1;
            'b10 : o = i2;
            'b11 : o = i3;
            default : o = i0;
        endcase
    end
endmodule
