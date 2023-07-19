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
module universal_adder(a,b,s,cout,m);
input [3:0]a,b;
input m;
output [3:0]s;
output cout;
wire c1,c2,c3;
wire w1,w2,w3,w4;
xor x1(w1,b[0],m);
xor x2(w2,b[1],m);
xor x3(w3,b[2],m);
xor x4(w4,b[3],m);

fa_st FA1(a[0],w1,m,s[0],c1);
fa_st FA2(a[1],w2,c1,s[1],c2);
fa_st FA3(a[2],w3,c2,s[2],c3);
fa_st FA4(a[3],w4,c3,s[3],cout);




endmodule
