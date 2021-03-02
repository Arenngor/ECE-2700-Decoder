`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Rowan Antonuccio
// 
// Create Date: 01/29/2019 06:52:58 AM
// Design Name: Clockdivider
// Module Name: ClockDivider
// Project Name: Lab2 Clockdivider
// Target Devices: Basys 3
// Tool Versions: 
// Description: 
// Slow clock speed in order to study debugging
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ClockDivider(
    input clkin,
    output reg clkout
    );
    reg [24:0] count;
    
    initial begin
            count  = 0;
            clkout = 0;
     end
     
     always @(posedge clkin) begin
            if (count == 25'd50_000) begin
            //if (count == 25'd8) begin
                    count <= 0;
                    clkout <= ~clkout;
            end
            else begin
                count <= count + 1;
            end
     end
endmodule
