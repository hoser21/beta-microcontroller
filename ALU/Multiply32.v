// ---------------------------------------------------------------------
//    File:       32-bit Multiplier
//    Author:     Kevin Hoser and Alex Schendel
//    Contact:    hoser21@up.edu and schendel21@up.edu
//    Date:       04/09/2020
// ---------------------------------------------------------------------

module multiply_32(prod, a, b);

parameter WIDTH = 32;

output [WIDTH-1:0] prod;
input [WIDTH-1:0] a, b;

assign prod = a * b;

endmodule