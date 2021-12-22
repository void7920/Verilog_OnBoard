`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/21 23:53:11
// Design Name: Half Subtractor
// Module Name: OnHS
// Project Name: Half Subtractor 
// Target Devices: Zybo Z7-20
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


module OnHS(
    output [3:0]led,
    input [3:0]sw,
    input [3:0]btn
    );
    
    Half_Subtractor (.Br(led[1]), .D(led[0]), .in0(sw[0]), .in1(btn[0]));
endmodule
