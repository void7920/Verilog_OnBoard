`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/22 01:40:34
// Design Name: Testbench Parallel Adder/Subtractor
// Module Name: Tb_PAS
// Project Name: Testbench Parallel Adder/Subtractor
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


module Tb_PAS();
    parameter size = 4;
    
    reg [size:0]in0;  // maximum input is 2^(size-1), becuz in[size] is "sel"
    reg [size-1:0]in1;
    
    wire [size:0]s;
    
    Nbit_Parallel_Add_Sub #(size) sim(.carry_out(s[size]), .sum(s[size-1:0]), .sel(in0[size]), .in0(in0), .in2(in1));
    
    initial
    begin
        in0 = 0;
        in1 = 0;
    end
    
    initial
    begin
        #50  in0[size]=0; in0[size-1:0]=16; in1=14;
        #50  in0[size]=1; in0[size-1:0]=15; in1=15;
        #50  in0[size]=0; in0[size-1:0]=3; in1=12;
        #50  in0[size]=1; in0[size-1:0]=12; in1=4;
        #50  in0[size]=0; in0[size-1:0]=10; in1=8;
        #50  in0[size]=1; in0[size-1:0]=9; in1=3;
        #50  in0[size]=0; in0[size-1:0]=8; in1=10;
        #50  in0[size]=1; in0[size-1:0]=13; in1=11;
    end
endmodule
