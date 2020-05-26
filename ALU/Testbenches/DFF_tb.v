// ---------------------------------------------------------------------
//    Module:     Testbench for D_FF with synchronous reset 
//    Author:     Nazanin Mansouri
//    Contact:    mansouri@up.edu
//    Date:       1/30/2018
//
//    All rights reserved
// ---------------------------------------------------------------------

`timescale 1ns / 1ns
module test_dff;

reg       clk, reset;
reg       d;
wire      q;

DFF dut (q, clk, d, reset);

initial // Clock generator
  begin
    clk = 0;
    forever #10 clk = !clk;
  end
  
initial	// Test stimulus
  begin
    #4 reset = 1;
    #5 reset = 0;
    #4 reset = 1;
    #12  d = 0;
    #54  d = 1;
    #21 d = 0;
    #37 d = 1;
    #17 d = 0;
    #48 d = 1;
  end
  
initial
    $monitor($stime,, reset,, clk,,, d,,, q); 
    
endmodule