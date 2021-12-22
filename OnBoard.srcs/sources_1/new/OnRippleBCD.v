`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/12/22 19:50:39
// Design Name: BCD Ripple Counter
// Module Name: OnRippleBCD
// Project Name: BCD Ripple Counter 
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


module OnRippleBCD(
    output led6_g,
    output [3:0]led,
    input sysclk,
    input[3:0]sw,
    input [3:0]btn
    );
    
    wire clk;
    
    Hz1#(125000000, 1) hz1_0(.oclk(clk), .iclk(sysclk));
    Hz1#(125000000, 1) hz1_1(.oclk(led6_g), .iclk(sysclk));
    
    Ripple_BCD(.Q(led), .Q_(~led), .clk(clk), .L(btn[0]));
endmodule
