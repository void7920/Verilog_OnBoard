`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/23 12:05:31
// Design Name: 
// Module Name: OnUNIVERSALSHIFT
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module OnUNIVERSALSHIFT(
    output led6_g,
    output [3:0]led,
    input sysclk,
    input[3:0]sw,
    input [3:0]btn
    );
    
    wire clk;
    
    Hz1#(125000000, 1) hz1_0(.oclk(clk), .iclk(sysclk));
    Hz1#(125000000, 1) hz1_1(.oclk(led6_g), .iclk(sysclk));
    
    Universal_Shift_Register#(4) USR(.o(led), .clk(clk), .reset_n(1'b1), .s0(sw[0]), .s1(sw[1]), .l(sw[3]), .r(sw[2]), .i(btn));
endmodule
