`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/12/23 11:14:32
// Design Name: Testbench BCD Ripple Counter
// Module Name: Tb_BCD_RIPPLE
// Project Name: Testbench BCD Ripple Counter
// Target Devices: simulation
// Tool Versions: Vivado 2021.2
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Tb_RIPPLE_BCD();
    reg clk, L;
    wire [3:0]Q;
    wire [3:0]Q_;
    
    Ripple_BCD sim_BCD(.Q(Q), .Q_(Q_), .clk(clk), .L(L));
    
    initial
    begin
        L=1'b0;
        
        clk=1'b0;
        forever
            #10 clk = ~clk;
    end
    
    initial
    begin
        #20 L=1'b1;
        #1000 $stop;
    end
endmodule
