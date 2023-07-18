`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:44:05 05/20/2023 
// Design Name: 
// Module Name:    rca 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module rca(a, b, s, co);
 input [3:0] a, b;// Two 4-bit inputs
 output [3:0] s;
 output co;
 wire w1, w2, w3;
 // instantiating 4 1-bit full adders in Verilog
 fa_st u1(a[0], b[0], 1'b0, s[0], w1);
 fa_st u2(a[1], b[1], w1, s[1], w2);
 fa_st u3(a[2], b[2], w2, s[2], w3);
 fa_st u4(a[3], b[3], w3, s[3], co);

endmodule
