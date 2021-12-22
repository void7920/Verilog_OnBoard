`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/12/22 20:00:17
// Design Name: Ring Counter
// Module Name: Ring
// Project Name: Ring Counter
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


module Ring #(parameter size = 4)(
    Q,
    clk
    );
    
    output [size-1:0]Q;
    input clk;
            
    reg [size-1:0]Q = 4'b1000;
   
    always@(posedge clk)
    begin
        Q <= {Q[0], Q[size-1:1]};
    end
endmodule
