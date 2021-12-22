`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/21 23:54:04
// Design Name: Testbench Full Subtractor
// Module Name: Tb_FS
// Project Name: Testbench Full Subtractor 
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


module Tb_FS();
    reg b_in;
    reg in0; 
    reg in1; 
    
    wire b_out;
    wire d;
    
    Full_Subtractor sim(.Br_out(b_out), .D(d), .Br_in(b_in), .in0(in0), .in1(in1));
    
    initial
    begin
        b_in=0;
        in0=0;
        in1=0;
    end
    
    initial
    begin
        #100 b_in=0; in0=0; in1=1;
        #100 b_in=0; in0=1; in1=0;
        #100 b_in=0; in0=1; in1=1;
        #100 b_in=1; in0=0; in1=0;
        #100 b_in=1; in0=0; in1=1;
        #100 b_in=1; in0=1; in1=0;
        #100 b_in=1; in0=1; in1=1;
    end
endmodule
