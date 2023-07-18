`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:18:38 05/20/2023 
// Design Name: 
// Module Name:    fa_st 
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
module fa_st(a,b,cin,sum, cout);
input a,b,cin;
output sum, cout;
wire x,y,z;
half_adder_st h1(.a(a), .b(b), .sum(x), .carry(y));
half_adder_st h2(.a(x), .b(cin), .sum(sum), .carry(z));
or or_1(cout,z,y);
endmodule


