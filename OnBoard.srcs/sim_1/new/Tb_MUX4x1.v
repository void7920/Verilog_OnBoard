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
    parameter size = 4;
    
    reg [1:0]sel;
    reg [size-1:0]in0;
    reg [size-1:0]in1;
    reg [size-1:0]in2;
    reg [size-1:0]in3;
    
    wire [size-1:0]out;
    
    Multiplexer_4x1#(size) sim(.o(out), .sel(sel), .i0(in0), .i1(in1), .i2(in2), .i3(in3));
    
    initial
    begin
        sel = 2'b00;
        in0 = 0;
        in1 = 0;
        in2 = 0;
        in3 = 0;
    end
    
    initial
    begin
        #100 sel=$urandom%4; in0=$urandom%16; in1=$urandom%16; in2=$urandom%16; in3=$urandom%16;
        #100 sel=$urandom%4; in0=$urandom%16; in1=$urandom%16; in2=$urandom%16; in3=$urandom%16;
        #100 sel=$urandom%4; in0=$urandom%16; in1=$urandom%16; in2=$urandom%16; in3=$urandom%16;
        #100 sel=$urandom%4; in0=$urandom%16; in1=$urandom%16; in2=$urandom%16; in3=$urandom%16;
        #100 sel=$urandom%4; in0=$urandom%16; in1=$urandom%16; in2=$urandom%16; in3=$urandom%16;
        #100 sel=$urandom%4; in0=$urandom%16; in1=$urandom%16; in2=$urandom%16; in3=$urandom%16;
        #100 sel=$urandom%4; in0=$urandom%16; in1=$urandom%16; in2=$urandom%16; in3=$urandom%16;
        #100 sel=$urandom%4; in0=$urandom%16; in1=$urandom%16; in2=$urandom%16; in3=$urandom%16;
        #100 sel=$urandom%4; in0=$urandom%16; in1=$urandom%16; in2=$urandom%16; in3=$urandom%16;
    end
endmodule