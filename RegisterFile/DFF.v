// ---------------------------------------------------------------------
//    Module:     D Flip-Flop
//    Author:     Kevin Hoser and Alex Schendel
//    Contact:    hoser21@up.edu and schendel21@up.edu
//    Date:       03/26/2020
// ---------------------------------------------------------------------

module DFF(q, clk, d, reset);

output q;
input  d, clk, reset;

reg    q;


// always @(negedge reset or posedge clk)

always @(negedge reset or posedge clk)

   if (~reset)
      q <= 1'b0;
   else
      q <= d;

endmodule
