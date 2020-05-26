// ---------------------------------------------------------------------
//    Module:     Testbench for 32-bit 4:1 Mux
//    Author:     Alex Schendel and Kevin Hoser
//    Contact:    schendel21@up.edu and hoser21@up.edu
//    Date:       3/27/2020
//
//    All rights reserved
// ---------------------------------------------------------------------

`timescale 1ns / 1ns

module test_mux4_32;

wire [31:0] z;
reg [31:0] i0, i1, i2, i3;
reg [1:0] s;

mux4_32 dut (z, i0, i1, i2, i3, s[0], s[1]);

  
initial	// Test stimulus
  begin
    i0 = 32'h00000000;
    i1 = 32'h00000001;
    i2 = 32'h00000002;
    i3 = 32'h00000003;
    s = 2'b00;
    #10 s = 2'h1;
    #10 s = 2'h2;
    #10 s = 2'h3;
  end
    
endmodule  
