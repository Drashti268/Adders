`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:54:29 05/24/2023
// Design Name:   BCD_adder
// Module Name:   /home/ise/Desktop/Verilog/Bcd adder/BCD_adder/BCD_adder_tb.v
// Project Name:  BCD_adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BCD_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module BCD_adder_tb;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg cin;

	// Outputs
	wire [3:0] s;
	wire c;

	// Instantiate the Unit Under Test (UUT)
	BCD_adder uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.s(s), 
		.c(c)
	);

	initial begin
		// Initialize Inputs
		a = 0; b = 0; cin =0; #100;
      a = 6;  b = 9;  cin = 0;   #100;
      a = 3;  b = 3;  cin = 1;   #100;
      a = 4;  b = 5;  cin = 0;   #100;
      a = 8;  b = 2;  cin = 0;   #100;
      a = 9;  b = 9;  cin = 1;   #100;

	end
      
endmodule

