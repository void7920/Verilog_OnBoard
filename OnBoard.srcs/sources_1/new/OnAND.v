`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/20 23:44:02
// Design Name: AND Gate
// Module Name: OnAND
// Project Name: AND Gate
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


module OnAND(
    output [3:0]led,
    input [3:0]sw
    );
    
    Nbit_AND#(3) (.out(led), .in(sw));
endmodule
