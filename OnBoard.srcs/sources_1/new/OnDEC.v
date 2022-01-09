`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/22 20:59:19
// Design Name: Decoder
// Module Name: OnDEC
// Project Name: Decoder
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


module OnDEC(
    output [3:0]led,
    input [3:0]sw
    );
    
    Nbit_Decoder #(2) DEC(.out(led), .in(sw));
endmodule
