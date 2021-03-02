`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2019 10:38:33 AM
// Design Name: 
// Module Name: decoder4_16
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


module decoder4_16(
    input [3:0] d,
    output [15:0] o
    );
    
    wire en1, en2;
    
    assign en1 = ~d[3];
    assign en2 = d[3];
    
    decoder3_8 d1(
             .en(en1),
            .d(d[2:0]),
            .o(o[15:8])
    );
    decoder3_8 d2(
           .en(en2),
         .d(d[2:0]),
         .o(o[7:0])
    );
    
    
endmodule
