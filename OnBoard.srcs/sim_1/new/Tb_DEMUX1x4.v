`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/22 21:22:12
// Design Name: Testbench Demultiplexer 1x4
// Module Name: Tb_DEMUX1x4
// Project Name: Testbench Demultiplexer 1x4 
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


module Tb_DEMUX1x4();
    parameter size = 4;
    
    reg [1:0]sel;
    reg [size-1:0]in;
    
    wire [size-1:0]out0;
    wire [size-1:0]out1;
    wire [size-1:0]out2;
    wire [size-1:0]out3;
    
    Demultiplexer_1x4#(size) sim(.o0(out0), .o1(out1), .o2(out2), .o3(out3), .sel(sel), .i(in));
    
    initial
    begin
        sel = 0;
        in = 0;
    end
    
    initial
    begin
        #100 sel = $urandom%4; in = $random%16;
        #100 sel = $urandom%4; in = $random%16;
        #100 sel = $urandom%4; in = $random%16;
        #100 sel = $urandom%4; in = $random%16;
        #100 sel = $urandom%4; in = $random%16;
        #100 sel = $urandom%4; in = $random%16;
        #100 sel = $urandom%4; in = $random%16;
        #100 sel = $urandom%4; in = $random%16;
    end
endmodule