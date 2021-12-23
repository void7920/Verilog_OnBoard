`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/12/23 10:56:08
// Design Name: Testbench Serial Input Parallel Output
// Module Name: Tb_SISO
// Project Name: Testbench Serial Input Parallel Output
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


module Tb_SISO();
    reg clk, rst_n, i;
    wire o;
    
    SISO sim_SISO(.o(o), .clk(clk), .reset_n(rst_n), .i(i));
    
    initial
    begin
        rst_n = 1'b0;
        i = 1'b0;
        
        clk =1'b0;
        forever
            #10 clk = ~clk;
    end
    
    initial
    begin
        #20 i=1'b0; rst_n=1'b0;
        #20 i=1'b1; rst_n=1'b0;
        #20 i=1'b1; rst_n=1'b1;
        #20 i=1'b0; rst_n=1'b1;
        #20 i=1'b1; rst_n=1'b1;
        #20 i=1'b0; rst_n=1'b1;
        #20 i=1'b0; rst_n=1'b1;
        #20 i=1'b0; rst_n=1'b1;
        #20 i=1'b0; rst_n=1'b1;
    end
endmodule
