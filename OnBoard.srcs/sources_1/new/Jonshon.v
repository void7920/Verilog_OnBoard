`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/12/22 20:00:17
// Design Name: Jonshon Counter 
// Module Name: Jonshon
// Project Name: Jonshon Counter  
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


module Jonshon #(parameter size = 4) (
    Q,
    clk,
    reset_n
    );
    
    output [size-1:0]Q;
    input clk;
    input reset_n;
    
    wire [size-1:0]Q_;
    
    genvar i;
    generate
        for(i=0; i<size; i=i+1)
        begin : D
            if(i == 0)
                D_FF DFF(.Q(Q[i]), .Q_(Q_[i]), .clk(clk), .preset_n(1'b1), .reset_n(reset_n), .D(Q_[size-1]));
            else
                D_FF DFF(.Q(Q[i]), .Q_(Q_[i]), .clk(clk), .preset_n(1'b1), .reset_n(reset_n), .D(Q_[i-1]));
        end
    endgenerate
endmodule
