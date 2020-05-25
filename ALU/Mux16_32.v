// ---------------------------------------------------------------------
//    Module:     32-bit 16:1 Mux
//    Author:     Kevin Hoser and Alex Schendel
//    Contact:    hoser21@up.edu and schedel21@up.edu
//    Date:       03/26/2020
// ---------------------------------------------------------------------


`timescale 1ns / 1ns

module mux16_32 (z, i0, i1, i2, i3, i4, i5, i6, i7, 
                    i8, i9, i10, i11, i12, i13, i14, i15, s);

output [31:0]  z;
input [31:0] i0, i1, i2, i3, i4, i5, i6, i7, 
             i8, i9, i10, i11, i12, i13, i14, i15;
input [3:0] s;

wire [31:0] a, b;

mux8_32 a1(a, i0, i1, i2, i3, i4, i5, i6, i7, s[2:0]);
mux8_32 a2(b, i8, i9, i10, i11, i12, i13, i14, i15, s[2:0]);
mux2_32 a3(z, a, b, s[3]);

endmodule