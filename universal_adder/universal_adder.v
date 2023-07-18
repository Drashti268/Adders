`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:40:41 05/23/2023 
// Design Name: 
// Module Name:    universal_adder 
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
module universal_adder(a,b,s,c,m);
input [3:0]a,b;
input m;
output [3:0]s;
output c;
wire w1,w2,w3;
wire [3:0]b_xor;
xor (b_xor[0],b[0],m);
xor (b_xor[1],b[1],m);
xor (b_xor[2],b[2],m);
xor (b_xor[3],b[3],m);

fa_st FA1(a[0],b_xor[0],s[0],w1);
fa_st FA2(a[1],w1,b_xor[1],s[1],w2);
fa_st FA3(a[2],w2,b_xor[2],s[2],w3);
fa_st FA4(a[3],w3,b_xor[3],s[3],c);




endmodule
