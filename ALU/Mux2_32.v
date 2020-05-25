// ---------------------------------------------------------------------
//    Module:     32-bit 2:1 Mux
//    Author:     Kevin Hoser and Alex Schendel
//    Contact:    hoser21@up.edu and schedel21@up.edu
//    Date:       03/26/2020
// ---------------------------------------------------------------------


`timescale 1ns / 1ns

module mux2_32 (z, i0, i1, s);

output [31:0] z;
input [31:0] i0, i1;
input s;

bufif1 buf0[31:0] (z, i1, s);
bufif0 buf1[31:0] (z, i0, s);

endmodule
