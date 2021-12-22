`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/12/22 19:43:40
// Design Name: BCD Ripple Counter
// Module Name: Ripple_BCD
// Project Name: BCD Ripple Counter 
// Target Devices: 
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


module Ripple_BCD(
    Q,
    Q_,
    clk,
    L
    );
    
    output [3:0]Q;
    output [3:0]Q_;
    input clk;
    input L;
    
    wire w0;
    and(w0, Q[1], Q[2]);
    
    JK_FF(.q(Q[0]), .q_(Q_[0]), .clk(clk), .preset_n(1'b1), .reset_n(1'b1), .j(L), .k(L));
    JK_FF(.q(Q[1]), .q_(Q_[1]), .clk(Q[0]), .preset_n(1'b1), .reset_n(1'b1), .j(Q_[3]), .k(L));
    JK_FF(.q(Q[2]), .q_(Q_[2]), .clk(Q[1]), .preset_n(1'b1), .reset_n(1'b1), .j(L), .k(L));
    JK_FF(.q(Q[3]), .q_(Q_[3]), .clk(Q[0]), .preset_n(1'b1), .reset_n(1'b1), .j(w0), .k(L));
endmodule
