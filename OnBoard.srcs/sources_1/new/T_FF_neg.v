`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/12/22 18:09:01
// Design Name: T Flip Flip neg CLK with Preset & Reset 
// Module Name: T_FF_neg
// Project Name: T Flip Flip neg CLK with Preset & Reset 
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


module T_FF_neg(
    q,
    q_,
    clk,
    preset,
    reset,
    t
    );
    
    output reg q;
    output q_;
    input clk;
    input preset;
    input reset;
    input t;
    
    assign q_ = ~q;
    
    always@(negedge clk or posedge preset or posedge reset)
    begin
        if(preset)
        begin
            q <= 1;
        end
        
        else if(reset)
        begin
            q <= 0;
        end
        
        else if(t)
        begin
            q <= ~q;
        end
    end
endmodule
