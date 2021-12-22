`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/27 17:20:38
// Design Name: D Filp Flop with Preset & reset
// Module Name: D_FF
// Project Name: D Filp Flop with Preset & reset 
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


module D_FF(
    q,
    q_,
    clk,
    preset_n,
    reset_n,
    d
    );
    
    output reg q;
    output q_;
    input clk;
    input preset_n;
    input reset_n;
    input d;
    
    assign q_ = ~q;
    
    always@(posedge clk or negedge preset_n or negedge reset_n)
    begin
        if(!preset_n)
            q <= 1;
        
        else if(!reset_n)
            q <= 0;
        
        else
            q <= d;    
    end
endmodule
