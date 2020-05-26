// ---------------------------------------------------------------------
//    Module:     Testbench for 32-bit Shift Left Module
//    Author:     Alex Schendel and Kevin Hoser
//    Contact:    schendel21@up.edu and hoser21@up.edu
//    Date:       03/26/2020
//
//    All rights reserved
// ---------------------------------------------------------------------

`timescale 1ns / 1ns

module test_shiftLeft32;

wire [31:0] out;
reg [31:0] a, b;

shiftLeft32 dut (out, a, b);

initial	// Test stimulus
  begin
    a = 32'h11111110; b = 32'h00000001;
    #5 a = 32'hFFFFFFFE; b = 32'h0000001F;
    #5 a = 32'h00000001; b = 32'h00000008;
    #5 a = 32'h00010000; b = 32'h00000000;
    #5 a = 32'h00010000; b = 32'h0000001F;
  end

endmodule  