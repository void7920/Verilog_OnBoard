`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/21 22:24:32
// Design Name: Testbench Half Adder
// Module Name: Tb_HA
// Project Name: Testbench Half Adder
// Target Devices: simulation
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


module Tb_HA();
    reg in0;
    reg in1;
 
    wire [1:0]s;
    
    Half_Adder sim(.carry_out(s[1]), .sum(s[0]), .in0(in0), .in1(in1));
    
    initial
    begin
        in0 = 0;
        in1 = 0;
    end
    
    initial
    begin
        #100 in0 = 0; in1 = 1;
        #100 in0 = 1; in1 = 0;
        #100 in0 = 1; in1 = 1;
    end
endmodule
