`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/21 22:21:04
// Design Name: Half Adder
// Module Name: Half_Adder
// Project Name: Half Adder
// Target Devices: 
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


module Half_Adder(
    carry_out,
    sum,
    in0,
    in1
    );
    
    output carry_out;
    output sum;
    input in0;
    input in1;
    
    assign carry_out = in0 & in1;
    assign sum = in0 ^ in1;
endmodule
