`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/12/23 11:16:55
// Design Name: Testbench Ripple Counter D / T
// Module Name: Tb_RIPPLE
// Project Name: Testbench Ripple Counter D / T
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


module Tb_RIPPLE();
    reg clk; 
    reg rst; 
    reg T;
    wire [3:0]Q0;
    wire [3:0]Q1;
    
    Nbit_Ripple_D sim_RIPPLE_D(.Q(Q0), .clk(clk), .reset(rst));
    Nbit_Ripple_T sim_RIPPLE_T(.Q(Q1), .clk(clk), .reset(rst), .T(T));
    
    initial
    begin
        rst=1'b1;
        T=1'b1;
        
        clk=1'b0;
        forever
            #10 clk =~clk;
    end
    
    initial
    begin
        #50 rst=1'b0;
        #100 $stop;
    end
endmodule
