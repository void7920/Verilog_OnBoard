`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/24 14:01:06
// Design Name: Universal Shift Register
// Module Name: Universal_Shift_Register
// Project Name: Universal Shift Register
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


module Universal_Shift_Register#(parameter size=4) (
    o,
    clk,
    reset_n,
    sel0,
    sel1,
    left,
    right,
    i
    );
    
    output [size-1:0]o;
    input clk;
    input reset_n;
    input sel0;
    input sel1;
    input left;
    input right;
    input [size-1:0]i;
    
    wire [size-1:0]muxo;
        
    genvar v;
    generate
        for(v=0; v<size; v=v+1)
        begin : USR
            if(v == 0) 
            begin : MUX 
                Multiplexer_4x1 mux(.o(muxo[v]), .sel({sel1, sel0}), .i0(o[v]), .i1(o[v+1]), .i2(left), .i3(i[v]));
            end
                        
            else if(v == size-1)
            begin : MUX
                Multiplexer_4x1 mux(.o(muxo[v]), .sel({sel1, sel0}), .i0(o[v]), .i1(right), .i2(o[v-1]), .i3(i[v]));
            end
            
            else
            begin : MUX
                Multiplexer_4x1 mux(.o(muxo[v]), .sel({sel1, sel0}), .i0(o[v]), .i1(o[v+1]), .i2(o[v-1]), .i3(i[v]));
            end
            
            D_FF DFF(.q(o[v]), .clk(clk), .preset_n(1'b1), .reset_n(reset_n), .d(muxo[v]));
        end
    endgenerate
    
endmodule