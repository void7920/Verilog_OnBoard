`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/12/23 10:33:07
// Design Name: Parallel Input Parallel Output Register
// Module Name: PIPO
// Project Name: Parallel Input Parallel Output Register 
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


module PIPO #(parameter size = 4)(
    o,
    clk,
    reset_n,
    load,
    i
    );
    
    output reg [size-1:0]o;
    input clk;
    input reset_n;
    input load;
    input [size-1:0]i;
    
    always@(posedge clk or negedge reset_n)
    begin
        if(!reset_n)
            o <= 0;
        
        else if(load)
            o <= i;
    end
endmodule
