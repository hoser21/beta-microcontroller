// ---------------------------------------------------------------------
//    Module:     Testbench for 1-bit D Flip-Flop with enable
//    Author:     Alex Schendel and Kevin Hoser
//    Contact:    schendel21@up.edu and hoser21@up.edu
//    Date:       3/26/2020
//
//    All rights reserved
// ---------------------------------------------------------------------

`timescale 1ns / 1ns

module test_DFF_EN;

reg       d, clk, reset, en;
wire      q;

DFF_EN DFF1(q, clk, d, reset, en); 
  
always
  begin
    clk = 0;
    forever #10 clk = !clk;
  end

initial	// Test stimulus
  begin
    #5 d = 0; reset = 1; en = 1;
    #20 d = 1;
    #20 d = 0;
    #20 d = 0;
    #20 d = 1;
    #20 d = 1;
    #10 d = 0; reset = 0;
    #30 d = 0;
    #20 d = 1; reset = 1;
    #20 d = 1; en = 0;
    #20 d = 0;
    #20 d = 0;
    #20 d = 1;
  end

endmodule  