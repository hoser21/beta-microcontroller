// ---------------------------------------------------------------------
//    Module:     Testbench for 32-bit 8:1 Mux
//    Author:     Alex Schendel and Kevin Hoser
//    Contact:    schendel21@up.edu and hoser21@up.edu
//    Date:       3/27/2020
//
//    All rights reserved
// ---------------------------------------------------------------------

`timescale 1ns / 1ns

module test_mux8_32;

wire [31:0] z;
reg [31:0] i0, i1, i2, i3, i4, i5, i6, i7;
reg [2:0] s;

mux8_32 dut (z, i0, i1, i2, i3, i4, i5, i6, i7, s);

  
initial	// Test stimulus
  begin
    i0 = 32'h00000000;
    i1 = 32'h00000001;
    i2 = 32'h00000002;
    i3 = 32'h00000003;
    i4 = 32'h00000004;
    i5 = 32'h00000005;
    i6 = 32'h00000006;
    i7 = 32'h00000007;
    s = 3'b000;
    #10 s = 3'h1;
    #10 s = 3'h2;
    #10 s = 3'h3;
    #10 s = 3'h4;
    #10 s = 3'h5;
    #10 s = 3'h6;
    #10 s = 3'h7;
  end
    
endmodule  
