`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/22 21:22:12
// Design Name: Testbench Multiplexer 4x1
// Module Name: Tb_MUX4x1
// Project Name: Testbench Multiplexer 4x1 
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


module Tb_MUX4x1();
    reg sel0;
    reg sel1;
    reg in0;
    reg in1;
    reg in2;
    reg in3;
    
    wire out;
    
    Multiplexer_4x1 sim(.out(out), .sel0(sel0), .sel(sel1), .in0(in0), .in1(in1), .in2(in2), .in3(in3));
    
    initial
    begin
        sel0 = 0;
        sel1 = 1;
        in0 = 0;
        in1 = 0;
        in2 = 0;
        in3 = 0;
    end
    
    initial
    begin
        #100 sel0=$urandom%2; sel1=$urandom%2; in0=$urandom%2; in1=$urandom%2; in2=$urandom%2; in3=$urandom%2;
        #100 sel0=$urandom%2; sel1=$urandom%2; in0=$urandom%2; in1=$urandom%2; in2=$urandom%2; in3=$urandom%2;
        #100 sel0=$urandom%2; sel1=$urandom%2; in0=$urandom%2; in1=$urandom%2; in2=$urandom%2; in3=$urandom%2;
        #100 sel0=$urandom%2; sel1=$urandom%2; in0=$urandom%2; in1=$urandom%2; in2=$urandom%2; in3=$urandom%2;
        #100 sel0=$urandom%2; sel1=$urandom%2; in0=$urandom%2; in1=$urandom%2; in2=$urandom%2; in3=$urandom%2;
        #100 sel0=$urandom%2; sel1=$urandom%2; in0=$urandom%2; in1=$urandom%2; in2=$urandom%2; in3=$urandom%2;
        #100 sel0=$urandom%2; sel1=$urandom%2; in0=$urandom%2; in1=$urandom%2; in2=$urandom%2; in3=$urandom%2;
        #100 sel0=$urandom%2; sel1=$urandom%2; in0=$urandom%2; in1=$urandom%2; in2=$urandom%2; in3=$urandom%2;
    end
endmodule