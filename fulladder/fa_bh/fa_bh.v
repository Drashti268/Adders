`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:38:41 05/20/2023 
// Design Name: 
// Module Name:    fa_bh 
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
module fa_bh(a,b,cin,s,cout);
input a,b,cin;
output reg cout,s;
always @(*)
begin
s = a^b^cin;
cout = (a&b)|(b&cin)|(a&cin);
end



endmodule
