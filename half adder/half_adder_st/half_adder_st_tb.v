`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:02:04 05/15/2023
// Design Name:   half_adder_st
// Module Name:   /home/ise/Desktop/Verilog/half adder/half_adder_st/half_adder_st_tb.v
// Project Name:  half_adder_st
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: half_adder_st
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module half_adder_st_tb;

	// Inputs
	reg a,b;

	// Outputs
	wire sum,carry;
	integer i;

	// Instantiate the Unit Under Test (UUT)
	half_adder_st uut (
		.a(a), 
		.b(b), 
		.sum(sum), 
		.carry(carry)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
   end
	initial begin
	for (i=0; i<=3; i=i+1) begin
	{a,b}= i;
	#5;
	$display ($time, "a=%b, b=%b, sum=%b, carry=%b",a,b,sum,carry);
	end
	
	#5 $finish;
	end
	
      
endmodule

