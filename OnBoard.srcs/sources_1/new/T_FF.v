`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/27 17:20:38
// Design Name: T Flip Flop with Preset & Reset
// Module Name: T_FF
// Project Name: T Flip Flop with Preset & Reset 
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


module T_FF(
    q,
    q_,
    clk,
    preset_n,
    reset_n,
    t
    );
    
    output reg q;
    output q_;
    input clk;
    input preset_n;
    input reset_n;
    input t;
    
    assign q_ = ~q;
    
    always@(posedge clk or negedge preset_n or negedge reset_n)
    begin
        if(!preset_n)
        begin
            q <= 1;
        end
        
        else if(!reset_n)
        begin
            q <= 0;
        end
        
        else if(t)
        begin
            q <= ~q;
        end
    end
endmodule
