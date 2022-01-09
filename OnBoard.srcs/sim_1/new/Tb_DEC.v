`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/22 21:10:50
// Design Name: Testbench Decoder
// Module Name: Tb_DEC
// Project Name: Testbench Decoder 
// Target Devices: simulation
// Tool Versions: Vivado 2021.2.2
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Tb_DEC();
    parameter isize = 3;
    parameter osize = 2**isize;
    
    reg [isize-1:0]in;
    wire [osize-1:0]out;
    
    Nbit_Decoder#(isize) sim(out, in);
    
    integer i;
    
    initial
    begin
        for(i=0; i<osize; i=i+1)
            #100 in = i;
    end
endmodule
