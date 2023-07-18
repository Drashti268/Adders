`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:06:45 05/15/2023 
// Design Name: 
// Module Name:    half_adder_df 
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
module half_adder_df(a,b,sum,carry);
input a,b;
output sum,carry;
//assign sum=a^b;
//assign carry=a&b;
assign {carry,sum}=a+b;


endmodule
