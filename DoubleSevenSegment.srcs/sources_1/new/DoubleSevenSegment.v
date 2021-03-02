`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/07/2019 09:17:41 AM
// Design Name: 
// Module Name: DoubleSevenSegment
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


module DoubleSevenSegment(
    input [7:0] a,
    input       clk,
    output [3:0] b,
    output [6:0] c
    );
    
    wire [6:0]  z;
    wire        sel;//clkout
    wire [3:0]  d;
    
    ClockDivider (.clkin(clk), .clkout(sel));
    
    MUXarray #(.SIZE(4)) (.a(a[3:0]), .b(a[7:4]), .sel(sel), .o(d));
    
    NewSevenSegment (.wxyz(d), .seg(z));
    
    assign b[0] = sel;
    assign b[1] = ~sel;
    assign b[2] = 1;
    assign b[3] = 1;
    assign c = ~z;

endmodule
