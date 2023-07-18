`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:34:04 05/20/2023 
// Design Name: 
// Module Name:    fa_df 
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
module fa_df(a,b,cin,s,cout);
input a,b,cin;
output cout,s;
assign s=a^b^cin;
assign cout=(a&b)|(b&cin)|(a&cin);


endmodule
