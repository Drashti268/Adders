`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:55:43 05/20/2023
// Design Name:   rca
// Module Name:   /home/ise/Desktop/Verilog/fulladder/rca/rca_tb.v
// Project Name:  rca
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: rca
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module rca_tb;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;

	// Outputs
	wire [3:0] s;
	wire co;
	integer i;

	// Instantiate the Unit Under Test (UUT)
	rca uut (
		.a(a), 
		.b(b), 
		.s(s), 
		.co(co)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
        
		// Add stimulus here
		for( i=0; i<=255; i=i+1)
		begin
		{a,b}=i; #10;
		$display($time, "a=%b, b=%b, s=%b, co=%b",a,b,s,co);
		end
		
		#10 $finish;

	end
	
      
endmodule

