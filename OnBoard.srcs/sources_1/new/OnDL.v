`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/27 17:20:38
// Design Name: D Latch
// Module Name: OnDL
// Project Name: D Latch 
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


module OnDL(
    output [3:0]led,
    input [3:0]sw,
    input [3:0]btn
    );
    
    D_Latch(.q(led[3]), .q_(led[0]), .en(sw[0]), .d(btn[0]));
endmodule
