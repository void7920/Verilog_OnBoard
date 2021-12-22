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
    reg sel0;
    reg sel1;
    reg in;
    
    wire out0;
    wire out1;
    wire out2;
    wire out3;
    
    Demultiplexer_1x4 sim(.out0(out0), .out1(out1), .out2(out2), .out3(out3), .sel0(sel0), .sel1(sel1), .in(in));
    
    initial
    begin
        sel0 = 0;
        sel1 = 0;
        in = 0;
    end
    
    initial
    begin
        #100 sel0=$urandom%2; sel1=$urandom%2; in=$urandom%2;
        #100 sel0=$urandom%2; sel1=$urandom%2; in=$urandom%2;
        #100 sel0=$urandom%2; sel1=$urandom%2; in=$urandom%2;
        #100 sel0=$urandom%2; sel1=$urandom%2; in=$urandom%2;
        #100 sel0=$urandom%2; sel1=$urandom%2; in=$urandom%2;
        #100 sel0=$urandom%2; sel1=$urandom%2; in=$urandom%2;
        #100 sel0=$urandom%2; sel1=$urandom%2; in=$urandom%2;
    end
endmodule