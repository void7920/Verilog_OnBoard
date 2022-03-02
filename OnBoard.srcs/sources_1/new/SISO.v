`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/12/23 10:33:07
// Design Name: Serial Input Serial Output Register
// Module Name: SISO
// Project Name: Serial Input Serial Output Register
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


module SISO #(parameter size=4) (
    o,
    clk,
    reset_n,
    i
    );
    
    output o;
    input clk;
    input reset_n;
    input i;
    
    reg [size-1:0]R;
    
    assign o = R[size-1];
    
    always@(posedge clk or negedge reset_n)
    begin
        if(!reset_n)
            R <= 0;
            
        else
            R <= {R[size-2:0], i};
    end
endmodule
