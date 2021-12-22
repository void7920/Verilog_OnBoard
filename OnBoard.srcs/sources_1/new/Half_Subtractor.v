`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/21 23:53:11
// Design Name: Half Subtractor
// Module Name: Half_Subtractor
// Project Name: Half Subtractor
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


module Half_Subtractor(
    Br, 
    D,
    in0, 
    in1
    );
    
    output Br;
    output D;
    input in0;
    input in1;
    
    assign D = in0 ^ in1;
    assign Br = ~in0 & in1;
endmodule
