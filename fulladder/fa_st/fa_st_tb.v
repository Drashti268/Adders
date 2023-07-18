`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:27:34 05/20/2023
// Design Name:   fa_st
// Module Name:   /home/ise/Desktop/Verilog/fulladder/fa_st/fa_st_tb.v
// Project Name:  fa_st
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fa_st
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fa_st_tb;

	// Inputs
	reg a;
	reg b;
	reg cin;

	// Outputs
	wire s;
	wire cout;
	integer i;

	// Instantiate the Unit Under Test (UUT)
	fa_df uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.s(s), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		for ( i=0; i<=7; i=i+1)
		begin
		{a,b,cin}=i; #10
		$display($time, "a=%b, b=%b, cin=%b, s=%b, cout=%b",a,b,cin,s,cout);
	   
      end
		 #10 $finish;

	end
      
endmodule

