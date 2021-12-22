`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/21 22:17:24
// Design Name: Testbench Full Adder
// Module Name: Tb_FA
// Project Name: Testbench Full Adder
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


module Tb_FA();
    reg c_in;
    reg in0;
    reg in1;
    
    wire [1:0]s;
    
    Full_Adder sim(.carry_out(s[1]), .sum(s[0]), .carry_in(c_in), .in0(in0), .in1(in1));
    
    initial
    begin
        c_in=0;
        in0=0;
        in1=0;
    end
    
    initial
    begin
        #100 c_in=0; in0=0; in1=1;
        #100 c_in=0; in0=1; in1=0;
        #100 c_in=0; in0=1; in1=1;
        #100 c_in=1; in0=0; in1=0;
        #100 c_in=1; in0=0; in1=1;
        #100 c_in=1; in0=1; in1=0;
        #100 c_in=1; in0=1; in1=1;
    end
endmodule
