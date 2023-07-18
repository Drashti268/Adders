`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:34:08 05/24/2023 
// Design Name: 
// Module Name:    BCD_adder 
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
module BCD_adder(a,b,cin,s,c);
input [3:0]a,b;
input cin;
output reg [3:0]s;
output reg c;

reg[4:0]sum_t;

always @ (a,b,cin)
begin
sum_t=a+b+cin;
if(sum_t > 9) begin
sum_t = sum_t + 1;
c=1;
s=sum_t[3:0];
end
else
begin 
c = 0;
s = sum_t[3:0];
end
end



endmodule
