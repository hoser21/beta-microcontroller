// ---------------------------------------------------------------------
//    Module:     32-bit Full Subtractor TB
//    Author:     Kevin Hoser and Alex Schendel
//    Contact:    hoser21@up.edu and schendel21@up.edu
//    Date:       02/27/2019
// ---------------------------------------------------------------------

`timescale 1ns / 1ns

module test_sub32;
  
wire bout;
wire [31:0] diff;
reg [31:0] x, y;
reg bin;

full_subtractor_32 dut(bout, diff, x, y, bin); 
  
initial	// Test stimulus
  begin
    #10  x = 32'h00000000; y =  32'h00000000; bin = 0;
    #10  x = 32'h00000000; y =  32'h583bd1cc; bin = 0;
    #10  x = 32'h10101010; y =  32'h583bd1cc; bin = 0;
    #10  x = 32'hFFFFFFFF; y =  32'hFFFFFFFF; bin = 1;
    #10  x = 32'he9eec208; y =  32'h583bd1cc; bin = 0;
    #10  x = 32'h1fbc8148; y =  32'h20ce01ee; bin = 0;
    #10  x = 32'h2416e099; y =  32'h3ef9d5ec; bin = 0;
    #10  x = 32'h687f3b5a; y =  32'h71252c6f; bin = 1;
    #10  x = 32'h555984ab; y =  32'h6c886316; bin = 1;
    #10  x = 32'h23337af9; y =  32'h89bfe491; bin = 0;
    #10 $stop;
  end

endmodule