`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/22 20:09:55
// Design Name: Ring Counter
// Module Name: OnRING
// Project Name: Ring Counter 
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


module OnRING(
    output led6_g,
    output [3:0]led,
    input sysclk,
    input[3:0]sw,
    input [3:0]btn
    );
    
    wire clk;
    
    Hz1#(125000000, 1) hz1_0(.oclk(clk), .iclk(sysclk));
    Hz1#(125000000, 1) hz1_1(.oclk(led6_g), .iclk(sysclk));
    
    Ring R(.Q(led), .clk(clk));
endmodule
