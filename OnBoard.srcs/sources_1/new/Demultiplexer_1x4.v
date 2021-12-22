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
// Revision 0.02 - Change Code
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Demultiplexer_1x4(
    out0,
    out1,
    out2,
    out3,
    sel0,
    sel1,
    in
    );
    
    output reg out0;
    output reg out1;
    output reg out2;
    output reg out3;
    input sel0;
    input sel1;
    input in;
    
    always@(*)
    begin
        case({sel1, sel0})
            2'b00 : begin 
                       out0 = in;
                       out1 = 0;
                       out2 = 0;
                       out3 = 0;
                    end
            2'b01 : begin 
                       out0 = 0;
                       out1 = in;
                       out2 = 0;
                       out3 = 0;
                    end
            2'b10 : begin 
                       out0 = 0;
                       out1 = 0;
                       out2 = in;
                       out3 = 0;
                    end
            2'b11 : begin 
                       out0 = 0;
                       out1 = 0;
                       out2 = 0;
                       out3 = in;
                    end
        endcase
    end
endmodule
