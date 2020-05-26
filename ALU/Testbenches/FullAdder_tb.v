// ---------------------------------------------------------------------
//    Module:     1-bit Full Adder TB
//    Author:     Kevin Hoser and Alex Schendel
//    Contact:    hoser21@up.edu and schendel21@up.edu
//    Date:       02/27/2019
// ---------------------------------------------------------------------


`timescale 1ns / 1ns

module test_add;

reg       a, b, c_in;
wire      c_out, sum;

full_adder dut(c_out, sum, p, g, a, b, c_in); 
  
initial	// Test stimulus
  begin
    #10  a = 1; b =  1; c_in = 1;
    #10  a = 1; b =  1; c_in = 0;
    #10  a = 1; b =  0; c_in = 1;
    #10  a = 1; b =  0; c_in = 0;
    #10  a = 0; b =  1; c_in = 1;
    #10  a = 0; b =  1; c_in = 0;
    #10  a = 0; b =  0; c_in = 1;
    #10  a = 0; b =  0; c_in = 0;
    #10 $stop;
  end
  
initial
   begin
    $display("      time a  b  c_in c_out sum p g "); 
    $monitor($stime,, a,,, b,,, c_in,,,,,, c_out,,,,,, sum,,,,,, p ,,,,,, g); 
   end

endmodule  