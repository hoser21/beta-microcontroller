// ---------------------------------------------------------------------
//    Module:     Testbench for 32-bit Register
//    Author:     Alex Schendel and Kevin Hoser
//    Contact:    schendel21@up.edu and hoser21@up.edu
//    Date:       03/26/2020
//
//    All rights reserved
// ---------------------------------------------------------------------

`timescale 1ns / 1ns

module test_Register32;

reg       [31:0] d;
reg       clk, en;
wire      [31:0] q;

register32 dut (q, clk, d, en); 
  
always
  begin
    clk = 0;
    forever #10 clk = !clk;
  end

initial	// Test stimulus
  begin
    #5 d = 32'h00000000; en = 1;
    #20 d = 32'h04ae7381;
    #20 d = 32'h984efc3a;
    #20 d = 32'hec5533e9;
    #20 d = 32'hc73edac3;
    #20 d = 32'hda136a62;
    #10 d = 32'h48f3a0eb;
    #30 d = 32'h7d66912f;
    #20 d = 32'hde633048;
    #20 d = 32'hb48c0b6b; en = 0;
    #20 d = 32'hcdc2f14b;
    #20 d = 32'h14fa1721;
    #20 d = 32'h97e06590;
  end

endmodule  