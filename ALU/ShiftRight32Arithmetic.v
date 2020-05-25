// ---------------------------------------------------------------------
//    Module:     32-bit Shift Register
//    Author:     Kevin Hoser and Alex Schendel
//    Contact:    hoser21@up.edu and schedel21@up.edu
//    Date:       03/26/2020
// ---------------------------------------------------------------------


`timescale 1ns / 1ns

module shiftRight32Arithmetic (out, a, b);

output [31:0] out;
input signed [31:0] a, b;

assign out = a >>> b;

endmodule