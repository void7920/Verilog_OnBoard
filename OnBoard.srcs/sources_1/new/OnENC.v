`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/22 20:59:19
// Design Name: Encoder
// Module Name: OnENC
// Project Name: Encoder
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



module OnENC(
    output [3:0]led,
    input [3:0]sw,
    input [3:0]btn
    );
    parameter osize = 3;
    parameter isize = 2**osize;
    
    wire [isize-1:0]in = {sw, btn};
     
    Nbit_Encoder #(osize, isize) ENC(.out(led), .in(in));
endmodule
