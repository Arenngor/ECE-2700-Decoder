`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/07/2019 04:03:43 AM
// Design Name: 
// Module Name: sevensegbench
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


module sevensegbench;

reg [3:0]   wxyz;
reg         clk;
wire [6:0]  oldsg;
wire [6:0]  newsg;
wire [6:0]       err;
wire        not_the_same;


    NewSevenSegment DUT(
        .wxyz(wxyz),
        .seg(newsg)
        );
    
    
    SevenSegmentTruthTable REF(
        .x(wxyz),
        .D(oldsg)
        );

    initial begin
        
        wxyz = 0;
        clk = 0;
        
        #100
        forever #10 clk=~clk;
     end
        
        assign err = newsg^oldsg;
        
        assign not_the_same = |err;

        always @(posedge clk) begin
            wxyz = wxyz+1;

     end
endmodule
