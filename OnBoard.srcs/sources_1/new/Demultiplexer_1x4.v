`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/22 21:16:17
// Design Name: Demultiplexer 1x4
// Module Name: Demultiplexer_1x4
// Project Name: Demultiplexer 1x4 
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


module Demultiplexer_1x4 #(parameter size = 4)(
    o0,
    o1,
    o2,
    o3,
    sel,
    i
    );
    
    output reg [size-1:0]o0;
    output reg [size-1:0]o1;
    output reg [size-1:0]o2;
    output reg [size-1:0]o3;
    input [1:0]sel;
    input [size-1:0]i;
    
    always@(*)
    begin
        case(sel)
            'b00 :  begin 
                       o0 = i;
                       o1 = 0;
                       o2 = 0;
                       o3 = 0;
                    end
            'b01 :  begin 
                       o0 = 0;
                       o1 = i;
                       o2 = 0;
                       o3 = 0;
                    end
            'b10 :  begin 
                       o0 = 0;
                       o1 = 0;
                       o2 = i;
                       o3 = 0;
                    end
            'b11 :  begin 
                       o0 = 0;
                       o1 = 0;
                       o2 = 0;
                       o3 = i;
                    end
        endcase
    end
endmodule