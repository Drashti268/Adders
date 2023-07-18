`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:18:53 05/15/2023 
// Design Name: 
// Module Name:    half_adder_bh 
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
module half_adder_bh(a,b,s,c);
input a,b;
output reg s,c;
always @ (a,b)
begin
s = a^b;
c = a&b;
end


endmodule
