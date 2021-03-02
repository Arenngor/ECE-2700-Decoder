`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2019 10:45:30 AM
// Design Name: 
// Module Name: testbench
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


module testbench;
    reg [3:0]       d;
    reg             clk;
    reg [3:0]       count;
    //reg [8:0]       count;
    wire [15:0]     o;
    //reg             sel;
    //reg  [3:0]           a;
    //reg  [3:0]           b;
    //wire [3:0]      o;

        
       decoder4_16 DUT(
        .d(d),
        .o(o)
        );
        
        
        
        initial begin
            d = 0;
            count = 0;
            clk = 0;
            
            #100
            forever #10 clk=~clk;
        end
        
        always @(posedge clk) begin
            count <= count + 1;
            d     <= count [3:0];
        end 
    /*MUXarray DUT(
    .sel(sel), 
    .a(a), 
    .b(b), 
    .o(o)
        );

 initial begin
            a = 0;
            b = 0;
            sel = 0;
            count = 0;
            clk = 0;
            
            #100
            forever #10 clk=~clk;
        end
        
        always @(posedge clk) begin
            count <= count + 1;
            a     <= count [3:0];
            b    <= count [7:4];
            sel  <= count [8]; 
        end 
*/
endmodule