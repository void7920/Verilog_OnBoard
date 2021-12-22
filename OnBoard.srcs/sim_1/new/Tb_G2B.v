`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/22 02:40:30
// Design Name: Testbench Gray to Binary Converter
// Module Name: Tb_G2B
// Project Name: Testbench Gray to Binary Converter 
// Target Devices: simulation
// Tool Versions: Vivado 2020.2,2
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Tb_G2B();
    parameter size = 4;
    
    wire  [size-1:0]bin;
    reg  [size-1:0]gray;
    
    Nbit_Gray_Binary_Converter#(size) sim(bin, gray);
    
    initial
    begin        
            gray = 4'b0000;
        #50 gray = 4'b0001;
        #50 gray = 4'b0011;
        #50 gray = 4'b0010;
        #50 gray = 4'b0110;
        #50 gray = 4'b0111;
        #50 gray = 4'b0101;
        #50 gray = 4'b0100;
        #50 gray = 4'b1100;
        #50 gray = 4'b1101;
        #50 gray = 4'b1111;
        #50 gray = 4'b1110;
        #50 gray = 4'b1010;
        #50 gray = 4'b1011;
        #50 gray = 4'b1001;
        #50 gray = 4'b1000;
    end
endmodule
