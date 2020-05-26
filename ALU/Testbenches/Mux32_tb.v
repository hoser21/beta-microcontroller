// ---------------------------------------------------------------------
//    Module:     Testbench for 32:1 Mux
//    Author:     Alex Schendel and Kevin Hoser
//    Contact:    schendel21@up.edu and hoser21@up.edu
//    Date:       3/27/2020
//
//    All rights reserved
// ---------------------------------------------------------------------

`timescale 1ns / 1ns

module test_mux32_1;

reg       [31:0] i;
reg       [4:0] s;
wire      out;

mux32_1 dut (out, i, s);

  
initial	// Test stimulus
  begin
    #00  i = 32'h00000000; s = 5'b00000;
    #10  i = 32'hAAAAAAAA; s = 5'b00000;
    #10  i = 32'h55555555; s = 5'b00001;
    #10  i = 32'hAAAAAAAA; s = 5'b00001;
    #10  i = 32'h55555555; s = 5'b00010;
    #10  i = 32'hAAAAAAAA; s = 5'b11111;
    #10  i = 32'hAAAAAAAA; s = 5'b11110;
    #10  i = 32'hFFFFFFFF; s = 5'b00000;
    #10  i = 32'hFFFFFFFE; s = 5'b00000;
    #10  i = 32'hFFFFFFFF; s = 5'b11111;
    #10  i = 32'h7FFFFFFF; s = 5'b11111;
  end
  
initial
    $monitor($stime,, i,, s,,, out); 
    
endmodule  
