`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/20 23:44:02
// Design Name: NOR Gate
// Module Name: OnNOR
// Project Name: NOR Gate
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


module OnNOR (
    output [3:0]led,
    input [3:0]sw
    );
    
    Nbit_NOR#(3) (.out(led), .in(sw));
endmodule
