`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/22 02:40:30
// Design Name: Testbench Binary to Gray Converter
// Module Name: Tb_B2G
// Project Name: Testbench Binary to Gray Converter 
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


module Tb_B2G();
    parameter size = 4;
    
    reg [size-1:0]bin;
    wire [size-1:0]gray;

    Nbit_Binary_Gray_Converter#(size) sim(.gray(gray), .bin(bin));
    
    integer i;
    
    initial
    begin
        bin = 0;
        
        for(i=0; i<2**size; i=i+1)
        begin
            #100 bin = bin + 1;
        end
    end
endmodule
