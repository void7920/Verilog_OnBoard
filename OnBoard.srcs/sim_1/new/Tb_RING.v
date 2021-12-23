`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/12/23 11:07:37
// Design Name: Testbench Ring Counter 
// Module Name: Tb_RING
// Project Name: Testbench Ring Counter 
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


module Tb_RING();
    reg clk;
    wire [3:0]Q;
    
    Ring#(4) sim_RING(.Q(Q), .clk(clk));
    
    initial
    begin
        clk=1'b0;
        forever
            #10 clk = ~clk;
    end
    
    initial
        #1000 $stop;
endmodule
