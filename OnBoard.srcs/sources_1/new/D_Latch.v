`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/27 17:20:38
// Design Name: Gated D Latch
// Module Name: D_Latch
// Project Name: Gated D Latch 
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


module D_Latch(
    q,
    q_,
    en,
    d
    );
    
    output reg q;
    output q_;
    input en;
    input d;
    
    assign q_ = ~q;
    
    always@(*)
    begin
        if(en)
            q <= d;
    end
endmodule
