`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2019 02:46:54 PM
// Design Name: 
// Module Name: clock_divider
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module clock_divider(
    input CLK_5_MHZ,
    input reset,
    output reg CLK_2_HZ
    );
    
    integer count_2_HZ = 0;
    always @(posedge CLK_5_MHZ, posedge reset) begin
        if (reset) begin
            count_2_HZ <= 0;
            CLK_2_HZ <= 0;
        end
        else begin
            if (count_2_HZ == 2500000) begin
                count_2_HZ <= 0;
                CLK_2_HZ <= ~CLK_2_HZ;
            end
            else
                count_2_HZ <= count_2_HZ + 1;
        end
    end
endmodule
