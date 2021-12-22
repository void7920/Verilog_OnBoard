`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/21 22:16:10
// Design Name: Full Adder
// Module Name: Full_Adder
// Project Name: Full Adder
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


module Full_Adder(
    carry_out,
    sum,
    carry_in,
    in0,
    in1
    );
    
    output carry_out;
    output sum;
    input carry_in;
    input in0;
    input in1;
    
    assign carry_out = (in0 & in1) | ((in0 ^ in1) & carry_in);
    assign sum = in0 ^ in1 ^ carry_in;
endmodule
