// ---------------------------------------------------------------------
//    Module:     Testbench for 32-bit Shift Right Arithmetic Module
//    Author:     Alex Schendel and Kevin Hoser
//    Contact:    schendel21@up.edu and hoser21@up.edu
//    Date:       03/26/2020
//
//    All rights reserved
// ---------------------------------------------------------------------

`timescale 1ns / 1ns

module test_shiftRight32Arithmetic;

wire [31:0] out;
reg [31:0] a, b;

shiftRight32Arithmetic dut (out, a, b);

initial	// Test stimulus
  begin
    a = 32'h11111110; b = 32'h00000001;
    #5 a = 32'hFFFFFFFE; b = 32'h0000001F;
    #5 a = 32'h00000001; b = 32'h00000008;
    #5 a = 32'h00010000; b = 32'h00000000;
    #5 a = 32'h00010000; b = 32'h0000001F;
    #5 a = 32'h80010000; b = 32'h0000000F;
    #5 a = 32'hF0010000; b = 32'h0000000F;
  end

endmodule  