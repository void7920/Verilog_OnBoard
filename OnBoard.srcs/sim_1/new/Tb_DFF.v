`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi 
// 
// Create Date: 2021/05/27 17:50:07
// Design Name: Testbench D Flip Flop
// Module Name: Tb_DFF
// Project Name: Testbench D Flip Flop 
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


module Tb_DFF();
    reg clk;
    reg preset_n;
    reg reset_n;
    reg d;
    
    wire q;
    wire q_n;
    
    D_FF sim(.q(q), .q_(q_n), .clk(clk), .preset_n(preset_n), .reset_n(reset_n), .d(d));
    
    initial
    begin
        preset_n = 1'b0;
        reset_n = 1'b0;
        d = 1'b0;
        
        clk = 0;
        
        forever 
            #10 clk = ~clk;
    end
    
    initial
    begin
        #100 preset_n = 1'b1;
        #100 reset_n = 1'b1;
        
        #100 d = 1'b1;
        #100 d = 1'b0;
        #100 d = 1'b1;
        
        #100 preset_n = 1'b0;        
        #100 reset_n = 1'b0;        
    end
endmodule
