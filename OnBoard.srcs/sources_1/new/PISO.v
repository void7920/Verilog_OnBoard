`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/12/23 10:46:19
// Design Name: Parallel Input Serial Output Register
// Module Name: PISO
// Project Name: Parallel Input Serial Output Register 
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


module PISO #(parameter size=4) (
    o,
    clk,
    reset_n,
    load,
    i
    );
    
    output o;
    input clk;
    input reset_n;
    input load;
    input [size-1:0]i;
    
    reg [size-1:0]R;
    
    assign o = R[size-1];
    //assign o = R[size-1:0];
    
    always@(posedge clk or negedge reset_n)
    begin
        if(!reset_n)
            R <= 0;
            
        else if(load)
            R <= i;
            
        else
            R <= {R[size-2:0], 1'b0};
        
    end
endmodule
