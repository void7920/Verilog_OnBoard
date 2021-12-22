`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/22 21:17:49
// Design Name: Muxplexer 4x1
// Module Name: OnMUX4x1
// Project Name: Muxplexer 4x1 
// Target Devices: Zybo Z7-20
// Tool Versions: Vivado 2021.2
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Revision 0.02 - Chage Code
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module OnMUX4x1(
    output [3:0]led,
    input [3:0]sw,
    input [3:0]btn
    );
    
    Multiplexer_4x1 mux(.out(led[0]), .sel0(sw[0]), .sel1(sw[1]), .in0(btn[0]), .in1(btn[1]), .in2(btn[2]), .in3(btn[3]));
endmodule
