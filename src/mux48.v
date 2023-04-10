`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/08/24 16:24:21
// Design Name: 
// Module Name: mux48
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


module mux48(
    input [7:0] x0,
    input [7:0] x1,
    input [7:0] x2,
    input [7:0] x3,
    input [1:0] sel,
    output reg [7:0] y
    );
    always @ (x0 or x1 or x2 or x3 or sel)
      case(sel)
      2'd0: y=x0;
      2'd1: y=x1;
      2'd2: y=x2;
      2'd3: y=x3;
      endcase
endmodule
