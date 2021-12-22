`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/20 23:55:57
// Design Name: Testbench NOT
// Module Name: Tb_NOT
// Project Name: Testbench NOT
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


module Tb_NOT();
    reg in;
    wire out;
    
    NOT sim(.out(out), .in(in));
    
    initial
    begin
        in=0;
    end
    
    initial
    begin
        forever #100
            in = ~in;
    end
endmodule
