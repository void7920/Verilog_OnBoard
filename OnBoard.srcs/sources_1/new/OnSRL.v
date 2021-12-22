`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/25 17:54:13
// Design Name: SR Latch
// Module Name: OnSRL
// Project Name: SR Latch
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


module OnSRL(
    output [3:0]led,
    input [3:0]sw,
    input [3:0]btn
    );
    
    SR_Latch(.q(led[3]), .q_(led[0]), .en(sw[0]), .set(btn[1]), .reset(btn[0]));
endmodule
