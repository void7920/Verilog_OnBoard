`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/21 22:26:42
// Design Name: N-bit Parallel Adder
// Module Name: Nbit_Parallel_Adder
// Project Name: N-bit Parallel Adder 
// Target Devices: 
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


module Nbit_Parallel_Adder#(parameter size = 4) (
    carry_out,
    sum,
    in0,
    in1
    );
    
    output carry_out;
    output [size-1:0]sum;
    input [size-1:0]in0;
    input [size-1:0]in1;
    
    wire [size-1:0]c_out;
    
    assign carry_out = c_out[size-1];
    
    genvar i;
    generate
        for(i=0; i<=size; i=i+1)
        begin
            if(i==0)
                Full_Adder fa(.carry_out(c_out[i]), .sum(sum[i]), .carry_in(1'b0), .in0(in0[i]), .in1(in1[i]));
            else
                Full_Adder fa(.carry_out(c_out[i]), .sum(sum[i]), .carry_in(c_out[i-1]), .in0(in0[i]), .in1(in1[i]));
        end
    endgenerate
endmodule
