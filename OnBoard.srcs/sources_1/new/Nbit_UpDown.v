`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2022/01/09 20:58:22
// Design Name: N-bit Up Down Counter
// Module Name: Nbit_UpDown
// Project Name: N-bit Up Down Counter 
// Target Devices: 
// Tool Versions: Vivado 2021.2
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Nbit_UpDown #(parameter size = 4)(
    o,
    clk,
    reset_n,
    sel
    );
    
    output reg [size-1:0]o;
    input clk;
    input reset_n;
    input sel;
    input [size-1:0]i;
    
    always@(posedge clk)
    begin
        if(!reset_n)
            o <= 0;
        
        else if(sel == 1)
            o <= o + 1;
        
        else
            o <= o - 1;
    end
endmodule
