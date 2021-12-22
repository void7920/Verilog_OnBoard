`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/12/22 18:43:16
// Design Name: Nbit Ripple D Counter
// Module Name: Nbit_Ripple_D
// Project Name: Nbit Ripple D Counter 
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


module Nbit_Ripple_D #(parameter size = 4)(
    Q,
    clk,
    reset
    );
    
    output [size-1:0]Q;
    input clk;
    input reset;
    
    wire [size-1:0]Q_;
    
    genvar i;
    generate
        for(i=0; i<size; i=i+1)
        begin : Ripple
            if(i == 0)
            begin : D
                D_FF_neg neg_D(.Q(Q[i]), .Q_(Q_[i]), .clk(clk), .preset(1'b0), .reset(reset), .d(Q_[i]));
            end
            
            else
            begin : D
                D_FF_neg neg_D(.Q(Q[i]), .Q_(Q_[i]), .clk(Q[i-1]), .preset(1'b0), .reset(reset), .d(Q_[i]));
            end
        end
    endgenerate  
endmodule
