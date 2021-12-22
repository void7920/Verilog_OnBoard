`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/21 23:53:11
// Design Name: Full Subtractor
// Module Name: Full_Subtractor
// Project Name: Full Subtractor
// Target Devices: 
// Tool Versions: Vivado 2020,2,2
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Full_Subtractor(
    Br_out,
    D,
    Br_in,
    in0,
    in1
    );
    
    output Br_out;
    output D;
    input in0; 
    input in1; 
    input Br_in;
    
    assign Br_out = (~in0 & in1) | (~(in0 ^ in1) & Br_in);
    assign D = in0 ^ in1 ^ Br_in;
endmodule

