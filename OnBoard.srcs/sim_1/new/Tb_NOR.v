`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/20 23:55:57
// Design Name: Testbench NOR
// Module Name: Tb_NOR
// Project Name: Testbench NOR
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

module Tb_NOR();
    parameter size = 3;
    
    reg in1, in2, in3;
    wire [size-1:0]in = {in1, in2, in3};
    wire out;
    
    Nbit_NOR#(3) sim(.out(out), .in(in));
    
    initial 
    begin
        in1 = 0;
        in2 = 0;
        in3 = 0;
    end
    
    initial
    begin
        main;
    end
    
    task main;
        fork
            op_in1;
            op_in2;
            op_in3;
        join
    endtask
    
    task op_in1;
        forever #100
            in1 = ~in1;
    endtask
    
    task op_in2;
        forever #200
            in2 = ~in2;
    endtask
    
    task op_in3;
        forever #400
            in3 = ~in3;
    endtask
endmodule