`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/27 17:50:07
// Design Name: Testbench JK Flip Flop
// Module Name: Tb_JKFF
// Project Name: Testbench JK Flip Flop
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


module Tb_JKFF();
    reg clk;
    reg preset_n;
    reg reset_n;
    reg j;
    reg k;
    
    wire q;
    wire q_n;
    
    JK_FF sim(.q(q), .q_(q_n), .clk(clk), .preset_n(preset_n), .reset_n(reset_n), .j(j), .k(k));
    
    initial
    begin
        preset_n = 1'b0;
        reset_n = 1'b0;
        j = 1'b0;
        k = 1'b0;
        
        clk = 1'b0;
    end
    
    always #10 clk = ~clk;
    
    initial
    begin
        #50 preset_n = 1'b1;
        #50 reset_n = 1'b1;
        
        #50 j = 1'b1; k = 1'b0;
        #50 j = 1'b0; k = 1'b1;
        #50 j = 1'b1; k = 1'b1;
        #50 j = 1'b1; k = 1'b0;
        
        #50 reset_n = 1'b0;
        #50 preset_n = 1'b0;
    end
endmodule
