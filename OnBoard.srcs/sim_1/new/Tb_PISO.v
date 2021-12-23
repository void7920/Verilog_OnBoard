`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/12/23 10:56:08
// Design Name: Testbench Parallel Input Serial Output
// Module Name: Tb_PISO
// Project Name: Testbench Parallel Input Serial Output
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


module Tb_PISO();
    parameter size=4;
    
    reg clk; 
    reg rst_n;
    reg [size-1:0]I;
    reg load;
    wire A;
    
    PISO sim_PISO(.o(A), .clk(clk), .reset_n(rst_n), .load(load), .i(I));
    
    initial
    begin
        rst_n = 1'b0;
        load = 1'b0;
        I = 4'b0000;
        
        clk = 1'b0;
            forever #10 clk = ~clk;
    end
    
    initial
    begin
        #50 I = 'b0001; load=1'b0; rst_n = 1'b1;
        #50 I = 'b0101; load=1'b0; rst_n = 1'b1;
        #50 I = 'b0001; load=1'b1; rst_n = 1'b1;
        #50 I = 'b0101; load=1'b1; rst_n = 1'b1;
        #50 I = 'b0001; load=1'b0; rst_n = 1'b0;
        #50 I = 'b1001; load=1'b1; rst_n = 1'b1;
        #50 I = 'b0001; load=1'b0; rst_n = 1'b1;
        #50 I = 'b0000; load=1'b0; rst_n = 1'b1;
        #50 I = 'b0000; load=1'b0; rst_n = 1'b1;
        #50 I = 'b0000; load=1'b0; rst_n = 1'b1;
    end
endmodule
