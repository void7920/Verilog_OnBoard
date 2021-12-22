`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/22 02:40:30
// Design Name: Testbench Comparator
// Module Name: Tb_COMP
// Project Name: Testbench Comparator
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


module Tb_COMP();
    parameter size = 4;

    reg [size-1:0]a;
    reg [size-1:0]b;
    
    wire eq, left, right;
    
    Nbit_Comparator#(size) sim(.eq(eq), .left(left), .right(right), .a(a), .b(b));
    
    initial
    begin
        a = 0;
        b = 0;
    end
    
    initial
    begin
        #100 a = $urandom%15; b = $urandom%15;
        #100 a = $urandom%15; b = $urandom%15;
        #100 a = $urandom%15; b = $urandom%15;
        #100 a = $urandom%15; b = $urandom%15;
        #100 a = $urandom%15; b = $urandom%15;
        #100 a = $urandom%15; b = $urandom%15;
        #100 a = $urandom%15; b = $urandom%15;
        #100 a = $urandom%15; b = $urandom%15;
        #100 a = $urandom%15; b = $urandom%15;
    end
endmodule
