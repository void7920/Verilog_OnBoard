`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/21 23:54:04
// Design Name: Testbench Half Subtractor
// Module Name: Tb_HS
// Project Name: Testbench Half Subtractor 
// Target Devices: simulation
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


module Tb_HS();
    reg in0; 
    reg in1;
    
    wire br; 
    wire d;
    
    Half_Subtractor sim(.Br(br), .D(d), .in0(in0), .in1(in1));
    
    initial
    begin
        in0=0;
        in1=0;
    end
    
    initial
    begin
        #100 in0=0; in1=1;
        #100 in0=1; in1=0;
        #100 in0=1; in1=1;
    end
endmodule
