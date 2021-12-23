`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/12/23 10:46:19
// Design Name: Serial Input Parallel Output Register
// Module Name: SIPO
// Project Name: Serial Input Parallel Output Register 
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


module SIPO #(parameter size=4) (
    o,
    clk,
    reset_n,
    i
    );
    
    output reg [size-1:0]o;
    input clk;
    input reset_n;
    input i;
    
    always@(posedge clk or negedge reset_n)
    begin
        if(!reset_n)
            o <= 0;
            
        else
            o <= {o[size-2:0], i};
    end
endmodule
