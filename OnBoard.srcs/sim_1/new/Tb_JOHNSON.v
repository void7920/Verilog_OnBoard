`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/12/23 11:11:08
// Design Name: Testbench Johnson Counter 
// Module Name: Tb_JOHNSON
// Project Name: Testbench Johnson Counter
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


module Tb_JOHNSON();
    reg clk, rst_n;
    wire [3:0]Q;
    
    Jonshon#(4) sim_J(.Q(Q), .clk(clk), .reset_n(rst_n));
    
    initial
    begin
        rst_n=1'b0;
        
        clk=1'b0;
        forever
            #10 clk = ~clk;
    end
    
    initial
    begin
        #40 rst_n=1'b1;
        #1000 $stop;
    end
endmodule
