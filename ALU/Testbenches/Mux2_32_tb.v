// ---------------------------------------------------------------------
//    Module:     Testbench for 2x32:1 Mux
//    Author:     Alex Schendel and Kevin Hoser
//    Contact:    schendel21@up.edu and hoser21@up.edu
//    Date:       3/27/2020
//
//    All rights reserved
// ---------------------------------------------------------------------

`timescale 1ns / 1ns

module test_mux2_32;

reg      [31:0] i0, i1;
reg             s;
wire     [31:0] out;

mux2_32 mux0 (out, i0, i1, s);

  
initial	// Test stimulus
  begin

    #10  i0 = 32'hFFFFFFFF; i1 = 32'h00000000; s = 0;
    #10  i0 = 32'h00000000; i1 = 32'hFFFFFFFF; s = 0;
    #10  i0 = 32'hFFFFFFFF; i1 = 32'h00000000; s = 1;
    #10  i0 = 32'h00000000; i1 = 32'hFFFFFFFF; s = 1;
    #10  i0 = 32'h00000000; i1 = 32'h00000000; s = 0;
    #10  i0 = 32'h00000000; i1 = 32'h00000000; s = 1;
    #10  i0 = 32'h00000000; i1 = 32'h00000000; s = 0;
    #10  i0 = 32'hFEDCBA98; i1 = 32'h12345678; s = 0;
    #10  i0 = 32'hFEDCBA98; i1 = 32'h12345678; s = 1;
    #10  i0 = 32'h12345678; i1 = 32'hFEDCBA98; s = 0;
    #10  i0 = 32'h12345678; i1 = 32'hFEDCBA98; s = 0;

  end
  
initial
    $monitor($stime,, i0,, i1,,, s,,, out); 
    
endmodule  