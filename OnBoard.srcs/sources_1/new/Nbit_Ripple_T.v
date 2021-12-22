`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/12/22 18:43:16
// Design Name: Nbit Ripple T Counter
// Module Name: Nbit_Ripple_T
// Project Name: Nbit Ripple T Counter
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


module Nbit_Ripple_T #(parameter size = 4)(
    Q,
    clk,
    reset,
    T
    );
    
    output [size-1:0]Q;
    input clk;
    input reset;
    input T;
    
    genvar i;
    generate
        for(i=0; i<size; i=i+1)
        begin : Ripple
            if(i == 0)
            begin : T
                T_FF_neg neg_T(.Q(Q[i]), .clk(clk), .preset(1'b0), .reset(reset), .t(T));
            end
            
            else
            begin : T
                T_FF_neg neg_T(.Q(Q[i]), .clk(Q[i-1]), .preset(1'b0), .reset(reset), .t(T));
            end
        end
    endgenerate
endmodule
