`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/12/23 12:02:16
// Design Name: Testbench Universial Shift Register
// Module Name: Tb_USR
// Project Name: Testbench Universial Shift Register 
// Target Devices: simulation
// Tool Versions: Vivado 2021.2
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Tb_UNIVERSIAL_SHIFT_REG();
    parameter size=4;
    
    reg clk;
    reg clr_n;
    reg s0;
    reg s1;
    reg l;
    reg r;
    reg [size-1:0]in;
    wire [size-1:0]out;
    
    Universal_Shift_Register #(size) sim_USR(.o(out), .clk(clk), .clear_n(clr_n), .sel0(s0), .sel1(s1), .left(l), .right(r), .i(in) );
    
    initial
    begin
        clk = 1'b0;
        clr_n = 1'b0;
        s0 = 1'b0;
        s1 = 1'b0;
        l = 1'b0;
        r = 1'b0;
    end
    
    initial
    begin       
        main;
    end
    
    task main;
        fork
            clk_gen;
            clr_n_op;
            load_op;
            sel0_op;
            sel1_op;
            lshift;
            rshift;
        join
    endtask
    
    task clk_gen;
        forever #10 clk = ~clk;
    endtask
    
    task clr_n_op;
        #10 clr_n = ~clr_n;
    endtask
    
    task load_op;
        begin
            forever #40 in = $urandom%16;
        end
    endtask
    
    task sel0_op;
        begin
            forever #20 s0 = ~s0;
        end
    endtask
    
    task sel1_op;
        begin
            forever #30 s1 = ~s1;
        end
    endtask
    
    task lshift;
        begin
            forever
            begin
                #60 l = ~l;
                #20 l = ~l;
            end
        end
    endtask
    
    task rshift;
        begin
            forever
            begin
                #40 r = ~r;
                #20 r = ~r;
            end
        end
    endtask

endmodule
