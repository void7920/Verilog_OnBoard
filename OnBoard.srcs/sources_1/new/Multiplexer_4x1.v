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
// Revision 0.02 - Change Code
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Multiplexer_4x1(
    out,
    sel0,
    sel1,
    in0,
    in1,
    in2,
    in3
    );
    
    output reg out;
    input sel0;
    input sel1;
    input in0;
    input in1;
    input in2;
    input in3;
    
    always@(*)
    begin
        case({sel1, sel0})
            2'b00 : out = in0;
            2'b01 : out = in1;
            2'b10 : out = in2;
            2'b11 : out = in3;
            default : out = in0;
        endcase
    end
endmodule
