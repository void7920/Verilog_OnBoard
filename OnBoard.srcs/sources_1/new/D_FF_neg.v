`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/12/22 18:09:01
// Design Name: D Flip Flip neg CLK with Preset & Reset 
// Module Name: D_FF_neg
// Project Name: D Flip Flip neg CLK with Preset & Reset 
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


module D_FF_neg(
    q,
    q_,
    clk,
    preset,
    reset,
    d
    );
    
    output reg q;
    output q_;
    input clk;
    input preset;
    input reset;
    input d;
    
    assign q_ = ~q;
    
    always@(negedge clk or posedge preset or posedge reset)
    begin
        if(preset)
            q <= 1;
        
        else if(reset)
            q <= 0;
        
        else
            q <= d;    
    end
endmodule
