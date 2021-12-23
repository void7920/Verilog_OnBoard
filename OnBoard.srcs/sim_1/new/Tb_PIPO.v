`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/12/23 10:56:08
// Design Name: Testbench Parallel Input Parallel Output
// Module Name: Tb_PIPO
// Project Name: Testbench Parallel Input Parallel Output
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


module Tb_PIPO();
    parameter size = 4;
    
    reg clk, rst_n, load;
    reg [size-1:0]I;
    wire [size-1:0]A;
    
    PIPO sim_PIPO(.o(A), .i(I), .clk(clk), .reset_n(rst_n), .load(load));
    
    initial
    begin
        rst_n = 1'b0;
        load = 1'b0;
        I = 'b0000;
    
        clk = 1'b0;
        forever
            #10 clk = ~clk;
    end
    
    initial
    begin
        #50 I = 'b0001; load=1'b0; rst_n = 1'b1;
        #50 I = 'b0101; load=1'b0; rst_n = 1'b1;
        #50 I = 'b0001; load=1'b1; rst_n = 1'b1;
        #50 I = 'b0101; load=1'b1; rst_n = 1'b1;
        #50 I = 'b0001; load=1'b0; rst_n = 1'b0;
        #50 I = 'b1001; load=1'b1; rst_n = 1'b1;
        #50 I = 'b0001; load=1'b0; rst_n = 1'b0;
    end
endmodule