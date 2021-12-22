`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2021/05/25 17:54:13
// Design Name: Gated SR Latch
// Module Name: SR_Latch
// Project Name: Gated SR Latch 
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


module SR_Latch(
    q,
    q_,
    en,
    set,
    reset
    );
    
    output reg q;
    output reg q_;
    input en;
    input set;
    input reset;
    
    always@(*)
    begin
        if(en == 1'b1)
        begin
            casex({set, reset})
                'b00 :  begin
                            q <= q; 
                            q_ <= q_; 
                        end
                'b01 :  begin
                            q <= set; 
                            q_ <= reset; 
                        end
                'b10 :  begin
                            q <= set; 
                            q_ <= reset; 
                        end
                'b11 :  begin
                            q <= 'bx; 
                            q_ <= 'bx; 
                        end
            endcase
        end
    end
endmodule
