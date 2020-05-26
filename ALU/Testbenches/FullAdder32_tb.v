// ---------------------------------------------------------------------
//    Module:     32-bit Full Adder TB
//    Author:     Kevin Hoser and Alex Schendel
//    Contact:    hoser21@up.edu and schendel21@up.edu
//    Date:       02/27/2019
// ---------------------------------------------------------------------

`timescale 1ns / 1ns

module test_add32;
  
wire c_out;
wire [31:0] sum;
reg [31:0] a, b;
reg c_in;

full_adder_32 dut(c_out, sum, a, b, c_in); 
  
initial	// Test stimulus
  begin
    #10  a = 32'h00000000; b =  32'h00000000; c_in = 0;
    #10  a = 32'h00000000; b =  32'h583bd1cc; c_in = 0;
    #10  a = 32'h10101010; b =  32'h583bd1cc; c_in = 0;
    #10  a = 32'hFFFFFFFF; b =  32'hFFFFFFFF; c_in = 1;
    #10  a = 32'he9eec208; b =  32'h583bd1cc; c_in = 0;
    #10  a = 32'h1fbc8148; b =  32'h20ce01ee; c_in = 0;
    #10  a = 32'h2416e099; b =  32'h3ef9d5ec; c_in = 0;
    #10  a = 32'h687f3b5a; b =  32'h71252c6f; c_in = 1;
    #10  a = 32'h555984ab; b =  32'h6c886316; c_in = 1;
    #10  a = 32'h23337af9; b =  32'h89bfe491; c_in = 0;
    #10 $stop;
  end

endmodule