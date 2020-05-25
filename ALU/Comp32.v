// ---------------------------------------------------------------------
//    Module:     32-bit Comparator
//    Author:     Kevin Hoser and Alex Schendel
//    Contact:    hoser21@up.edu and schendel21@up.edu
//    Date:       04/09/2020
// ---------------------------------------------------------------------

module comp_32(lt, eq, gt, a, b);

parameter WIDTH = 32;

output [WIDTH-1:0] lt, eq, gt;
input [WIDTH-1:0] a, b;

assign lt = {{31'b0}, {a < b}};
assign eq = {{31'b0}, {a == b}};
assign gt = {{31'b0}, {a > b}};

endmodule
