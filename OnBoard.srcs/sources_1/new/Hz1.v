`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/25 17:41:12
// Design Name: 1 Hz
// Module Name: Hz1
// Project Name: 1 Hz
// Target Devices: 
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


module Hz1 #(parameter ihz = 125000000, parameter ohz = 1)(
    oclk,
    iclk
    );
    
    output reg oclk;
    input iclk;
    
    integer i = 0;
    
    always@(posedge iclk)
    begin
        i = i+1;
        
        if(i == (ihz/2*ohz)-1)
        begin
            oclk = ~oclk;
            
            i = 0; 
        end
    end
endmodule
