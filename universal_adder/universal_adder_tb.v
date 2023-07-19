`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:04:49 07/19/2023
// Design Name:   universal_adder
// Module Name:   /home/ise/Desktop/Verilog/universal_adder/universal_adder_tb.v
// Project Name:  universal_adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: universal_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module universal_adder_tb;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg m;

	// Outputs
	wire [3:0] s;
	wire cout;
	integer i,j;

	// Instantiate the Unit Under Test (UUT)
	universal_adder uut (
		.a(a), 
		.b(b), 
		.s(s), 
		.cout(cout), 
		.m(m)
	);


	initial begin
		a = 0; b = 0; m = 0;
		for(i=0;i<=15;i=i+1)
		begin
			a=i;	#5;
			for(j=0;j<=15;j=j+1)
			begin
				b=j;	#5;
				$display("A=%b, B=%b, Cin=%b, S=%b, Cout=%b",a,b,m,s,cout);
			end
		end
			
		#5 $finish;
end
endmodule



