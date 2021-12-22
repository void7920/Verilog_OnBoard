`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/22 01:41:37
// Design Name: N-bit Parallel Adder/Subtractor
// Module Name: Nbit_Parallel_Add_Sub
// Project Name: N-bit Parallel Adder/Subtractor 
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


module Nbit_Parallel_Add_Sub #(parameter size = 4)(
    carry_out,
    sum,
    sel, // add or sub
    in0,
    in1
    );
    
    output carry_out;
    output [size-1:0]sum;
    input sel;
    input [size-1:0]in0;
    input [size-1:0]in1;
    
    wire [size-1:0]c_out;
    wire [size-1:0]xr;
    
    assign carry_out = c_out[size-1];
    
    genvar i;
    generate
        for(i=0; i<=size-1; i=i+1)
        begin : PAS
            xor(xr[i], in1[i], sel);
            
            if(i==0)
                Full_Adder fa(.carry_out(c_out[i]), .sum(sum[i]), .carry_in(sel), .in0(in0[i]), .in1(xr[i]));
            else
                Full_Adder fa(.carry_out(c_out[i]), .sum(sum[i]), .carry_in(c_out[i-1]), .in0(in0[i]), .in1(xr[i]));
        end
    endgenerate
endmodule
