// ---------------------------------------------------------------------
//    Module:     1-bit Full Subtractor TB
//    Author:     Kevin Hoser and Alex Schendel
//    Contact:    hoser21@up.edu and schendel21@up.edu
//    Date:       02/27/2019
// ---------------------------------------------------------------------


`timescale 1ns / 1ns

module test_sub;

reg       x, y, bin;
wire      bout, diff;

full_subtractor dut(bout, diff, p, g, x, y, bin); 
  
initial	// Test stimulus
  begin
    #10  x = 1; y =  1; bin = 1;
    #10  x = 1; y =  1; bin = 0;
    #10  x = 1; y =  0; bin = 1;
    #10  x = 1; y =  0; bin = 0;
    #10  x = 0; y =  1; bin = 1;
    #10  x = 0; y =  1; bin = 0;
    #10  x = 0; y =  0; bin = 1;
    #10  x = 0; y =  0; bin = 0;
    #10 $stop;
  end
  
initial
   begin
    $display("      time x  y  bin bout diff p g "); 
    $monitor($stime,, x,,, y,,, bin,,,,,, bout,,,,,, diff ,,,,,, p ,,,,,, g); 
   end

endmodule  