// ---------------------------------------------------------------------
//    Module:     32-bit 4:1 Mux
//    Author:     Kevin Hoser and Alex Schendel
//    Contact:    hoser21@up.edu and schedel21@up.edu
//    Date:       03/26/2020
// ---------------------------------------------------------------------


`timescale 1ns / 1ns

module mux4_32 (z, i0, i1, i2, i3, s0, s1);

output [31:0] z;
input [31:0] i0, i1, i2, i3;
input s0, s1;

wire [31:0] a, b;

mux2_32 a1(a, i0, i1, s0);
mux2_32 a2(b, i2, i3, s0);
mux2_32 a3(z, a, b, s1);

endmodule
