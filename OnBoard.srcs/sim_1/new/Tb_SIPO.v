`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/12/23 10:56:08
// Design Name: Testbench Serial Input Parallel Output
// Module Name: Tb_SIPO
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


module Tb_SIPO();
    reg clk, rst_n, I;
    wire [3:0]A;
    
    SIPO sim_SIPO(.o(A), .clk(clk), .reset_n(rst_n), .i(I));
    
    initial
    begin
        $monitor($time, "A[0]=%b, A[1]=%b, A[2]=%b, A[3]=%b", A[0], A[1], A[2], A[3]);
        rst_n = 1'b0;
        I = 1'b0;
        
        clk = 1'b0;
        forever
            #10 clk = ~clk;
    end
    
    initial
    begin
        #20 I=1'b0; rst_n=1'b0;
        #20 I=1'b1; rst_n=1'b0;
        #20 I=1'b1; rst_n=1'b1;
        #20 I=1'b1; rst_n=1'b1;
        #20 I=1'b0; rst_n=1'b1;
        #20 I=1'b1; rst_n=1'b1;
        #20 I=1'b1; rst_n=1'b1;
        #20 I=1'b1; rst_n=1'b1;
        #20 I=1'b1; rst_n=1'b0;
    end
endmodule
