`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/22 21:10:50
// Design Name: Testbench Encoder
// Module Name: Tb_ENC
// Project Name: Testbench Encoder 
// Target Devices: simulation
// Tool Versions: Vivado 2020.2
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Tb_ENC();
    parameter osize = 3;
    parameter isize = 2**osize;
    
    reg [isize-1:0]in;
    wire [osize-1:0]out;
    
    Nbit_Encoder#(osize) sim(.out(out), .in(in));
        
    initial
    begin
        in = 0;
    end
    
    integer i;
    
    initial
    begin
        for(i=0; i<isize; i=i+1)
        begin
            #100 in = 2**i; 
        end
    end
endmodule
