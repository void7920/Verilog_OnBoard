`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/21 22:18:11
// Design Name: Full Adder
// Module Name: OnFA
// Project Name: Full Adder
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


module OnFA(
    output [3:0]led,
    input [3:0]sw,
    input [3:0]btn
    );
    
    Full_Adder (.carry_out(led[1]), .sum(led[0]), .carry_in(sw[3]), .in0(sw[0]), .in1(btn[0])); 
endmodule
