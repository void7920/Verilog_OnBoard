`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/21 23:53:11
// Design Name: Full Subtractor
// Module Name: OnFS
// Project Name: Full Subtractor 
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


module OnFS(
    output [3:0]led,
    input [3:0]sw,
    input [3:0]btn
    );
    
    Full_Subtractor (.Br_out(led[1]), .D(led[0]), .Br_in(sw[3]), .in0(sw[0]), .in1(btn[0]));
endmodule
