// ---------------------------------------------------------------------
//    Module:     32-bit Or Gate TB
//    Author:     Kevin Hoser and Alex Schendel
//    Contact:    hoser21@up.edu and schendel21@up.edu
//    Date:       02/27/2019
// ---------------------------------------------------------------------

module and32_tb();

wire [31:0] out;
reg [31:0] a, b;

and32 dut(out, a, b); 
  
initial	// Test stimulus
  begin
  #10  a = 32'h00000000; b = 32'h00000000;
  #10  a = 32'hFFFFFFFF; b = 32'hFFFFFFFF;
	#10  a = 32'he9eec208; b = 32'h583bd1cc;
	#10  a = 32'h1fbc8148; b = 32'h20ce01ee;
	#10  a = 32'h2416e099; b = 32'h3ef9d5ec;
	#10  a = 32'h687f3b5a; b = 32'h71252c6f;
	#10  a = 32'h555984ab; b = 32'h6c886316;
	#10  a = 32'h23337af9; b = 32'h89bfe491;
  #10 $stop;
  end

endmodule
