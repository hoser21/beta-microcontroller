// ---------------------------------------------------------------------
//    Module:     Testbench for 2:1 Mux
//    Author:     Nazanin Mansouri
//    Contact:    mansouri@up.edu
//    Date:       2/11/2018
//
//    All rights reserved
// ---------------------------------------------------------------------

`timescale 1ns / 1ns

module test_mux2_1;

reg       i0, i1;
reg       s;
wire      out;

mux2_1 mux0 (out, i0, i1, s);

  
initial	// Test stimulus
  begin

    #10  i0 = 0; i1 = 0; s = 0;
    #10  i0 = 0; i1 = 1; s = 0;
    #10  i0 = 0; i1 = 0; s = 0;
    #10  i0 = 0; i1 = 1; s = 0;
    #10  i0 = 1; i1 = 0; s = 0;
    #10  i0 = 0; i1 = 0; s = 0;
    #10  i0 = 1; i1 = 1; s = 0;
    #10  i0 = 0; i1 = 1; s = 0;
    #10  i0 = 1; i1 = 0; s = 0;
    #10  i0 = 1; i1 = 1; s = 0;
    #10  i0 = 0; i1 = 0; s = 0;
    #10  i0 = 0; i1 = 1; s = 0;
    #10  i0 = 0; i1 = 0; s = 1;
    #10  i0 = 0; i1 = 1; s = 1;
    #10  i0 = 0; i1 = 0; s = 1;
    #10  i0 = 0; i1 = 1; s = 1;
    #10  i0 = 1; i1 = 0; s = 1;
    #10  i0 = 0; i1 = 0; s = 1;
    #10  i0 = 1; i1 = 1; s = 1;
    #10  i0 = 0; i1 = 1; s = 1;
    #10  i0 = 1; i1 = 0; s = 1;
    #10  i0 = 1; i1 = 1; s = 1;
    #10  i0 = 0; i1 = 0; s = 1;
    #10  i0 = 0; i1 = 1; s = 1;
  end
  
initial
    $monitor($stime,, i0,, i1,,, s,,, out); 
    
endmodule  