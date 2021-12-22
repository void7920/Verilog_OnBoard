`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/27 17:50:07
// Design Name: Testbench SR Latch
// Module Name: Tb_SRL
// Project Name: Testbench SR Latch 
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


module Tb_SRL();
    reg en;
    reg s;
    reg r;
    
    wire q;
    wire q_n;
    
    SR_Latch sim(.q(q), .q_(q_n), .en(en), .set(s), .reset(r));
    
    initial
    begin
        s =1'b0;
        r =1'b0;
        en =1'b0;
    end
    
    initial
    begin
        #100 s =1'b1; r =1'b0; en =1'b0;
        #100 s =1'b0; r =1'b1; en =1'b0;
        #100 s =1'b1; r =1'b0; en =1'b1;
        #100 s =1'b0; r =1'b1; en =1'b1;
        #100 s =1'b1; r =1'b0; en =1'b1;
        #100 s =1'b1; r =1'b0; en =1'b0;
        #100 s =1'b1; r =1'b1; en =1'b0;
        #100 s =1'b1; r =1'b1; en =1'b1;
        #100 s =1'b1; r =1'b0; en =1'b1;
    end
endmodule
