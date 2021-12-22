`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/27 17:50:07
// Design Name: Testbench D Latch
// Module Name: Tb_DL
// Project Name: Testbench D Latch 
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


module Tb_DL();
    reg en;
    reg d;
    
    wire q;
    wire q_n;
    
    D_Latch sim(.q(q), .q_(q_n), .en(en), .d(d));
    
    initial
    begin
        d = 1'b0;
        en = 1'b0;
    end
    
    initial
    begin        
        #100 d = 1'b1; en = 1'b0;     
        #100 d = 1'b0; en = 1'b0;     
        #100 d = 1'b1; en = 1'b0;     
        #100 d = 1'b1; en = 1'b1;     
        #100 d = 1'b0; en = 1'b1;     
        #100 d = 1'b0; en = 1'b0;     
        #100 d = 1'b1; en = 1'b1;     
        #100 d = 1'b1; en = 1'b0;     
        #100 d = 1'b0; en = 1'b0;     
        #100 d = 1'b0; en = 1'b1;     
    end
endmodule
