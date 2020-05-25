// ---------------------------------------------------------------------
//    Module:     1-bit 2:1 Mux
//    Author:     Kevin Hoser and Alex Schendel
//    Contact:    hoser21@up.edu and schedel21@up.edu
//    Date:       03/26/2020
// ---------------------------------------------------------------------


`timescale 1ns / 1ns

module mux2_1 (z, i0, i1, s);

output z;
input i0, i1, s;

bufif1 (z, i1, s);
bufif0 (z, i0, s);

endmodule
