// ---------------------------------------------------------------------
//    Module:     32-bit Divider
//    Author:     Kevin Hoser and Alex Schendel
//    Contact:    hoser21@up.edu and schendel21@up.edu
//    Date:       04/09/2020
// ---------------------------------------------------------------------

module divide_32(out, a, b);

parameter WIDTH = 32;

output [WIDTH-1:0] out;
input [WIDTH-1:0] a,b;

assign out = a / b;

endmodule