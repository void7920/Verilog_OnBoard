`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/22 21:17:49
// Design Name: Demultiplexer 1x4
// Module Name: OnDEMUX1x4
// Project Name: Demultiplexer 1x4 
// Target Devices: Zybo Z7-20
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


module OnDEMUX1x4(
    output [3:0]led,
    input [3:0]sw,
    input [3:0]btn
    );
    
    Demultiplexer_1x4#(1) demux(.out0(led[0]), .out1(led[1]), .out2(led[2]), .out3(led[3]), .sel(sw[1:0]), .in(btn[0]));
endmodule
