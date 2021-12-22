`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/25 17:41:12
// Design Name: 1 Hz
// Module Name: OnHz1
// Project Name: 1 Hz
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


module OnHz1(
    output [3:0]led,
    input sysclk
    );
    
    Hz1#(125000000) (.oclk(led[0]), .iclk(sysclk));
endmodule
