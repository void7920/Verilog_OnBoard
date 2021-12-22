`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/27 17:20:38
// Design Name: JK Flip Flop with Preset & Reset
// Module Name: JK_FF
// Project Name: JK Flip Flop with Preset & Reset 
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


module JK_FF(
    q,
    q_,
    clk,
    preset_n,
    reset_n,
    j,
    k
    );
    
    output reg q;
    output q_;
    input clk;
    input preset_n;
    input reset_n;
    input j;
    input k;
    
    assign q_ = ~q;
    
    always@(posedge clk or negedge preset_n or negedge reset_n)
    begin        
        if(!preset_n)
            q <= 1'b1;
        
        else if(!reset_n)
            q <= 1'b0;
            
        else
            casex({j, k})
                2'b00:  begin 
                            q <= q;
                        end
                2'b01:  begin 
                            q <= 1'b0;
                        end
                2'b10:  begin 
                            q <= 1'b1;
                        end
                2'b11:  begin 
                            q <= q_;
                        end
            endcase
    end
endmodule
