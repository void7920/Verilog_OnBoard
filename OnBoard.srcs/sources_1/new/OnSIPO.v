`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/12/23 10:49:43
// Design Name: Serial Input Parallel Output Register
// Module Name: OnSIPO
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


module OnSIPO(
    output led6_g,
    output [3:0]led,
    input sysclk,
    input[3:0]sw,
    input [3:0]btn
    );
    
    wire clk;
    
    Hz1#(125000000, 1) hz1_0(.oclk(clk), .iclk(sysclk));
    Hz1#(125000000, 1) hz1_1(.oclk(led6_g), .iclk(sysclk));
    
    SIPO #(4) sipo(.o(led), .clk(clk), .reset_n(sw[0]), .i(btn[0]));
endmodule
